#!/usr/bin/env python3
"""Stage combined Docsify docs for upload (follow symlinks, nest redirects)."""

from __future__ import annotations

import shutil
import subprocess
from pathlib import Path

ROOT = Path("/home/leslmosnk/Desktop/Flutter Widgets")
SRC = ROOT / "docs"
DEST = Path("/tmp/mantle-docs-upload")
PACKAGES = ("core", "widgets", "basic", "annotations", "gen")

REDIRECT = """<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Mantle</title>
  <script>
    (function () {
      var parts = location.pathname.replace(/\\/+$/, '').split('/');
      var pkg = parts[parts.length - 1] || '';
      var rest = (location.hash || '#/').replace(/^#\\/?/, '');
      var target;
      if (!rest || rest === '/') {
        target = pkg + '/';
      } else if (rest === pkg || rest.indexOf(pkg + '/') === 0) {
        target = rest;
      } else {
        target = pkg + '/' + rest.replace(/^\\/+/, '');
      }
      location.replace('/#/' + target);
    })();
  </script>
</head>
<body></body>
</html>
"""


def main() -> None:
    if DEST.exists():
        shutil.rmtree(DEST)
    DEST.mkdir(parents=True)
    subprocess.run(
        ["rsync", "-aL", "--delete", f"{SRC}/", f"{DEST}/"],
        check=True,
    )
    for pkg in PACKAGES:
        html = DEST / pkg / "index.html"
        if html.exists():
            html.write_text(REDIRECT, encoding="utf-8")
    leftover = list(DEST.rglob("*"))
    symlinks = [p for p in leftover if p.is_symlink()]
    if symlinks:
        raise SystemExit(f"leftover symlinks: {symlinks[:5]}")
    files = [p for p in leftover if p.is_file()]
    print(f"staged {len(files)} files in {DEST}")
    for pkg in PACKAGES:
        print(f"  redirect {pkg}/index.html")


if __name__ == "__main__":
    main()
