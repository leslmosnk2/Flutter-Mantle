#!/usr/bin/env python3
"""Stage combined Docsify docs for upload (follow symlinks, nest redirects)."""

from __future__ import annotations

import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "docs"
PACKAGES = ("core", "widgets", "basic", "annotations", "gen")

REDIRECT = """<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Mantle</title>
  <script>
    (function () {
      var path = location.pathname.replace(/\\/+$/, '').replace(/\\/index\\.html$/, '');
      var parts = path.split('/');
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
      var root = parts.slice(0, -1).join('/') || '';
      location.replace(root + '/#/' + target);
    })();
  </script>
</head>
<body></body>
</html>
"""


def main() -> None:
    dest = Path(sys.argv[1] if len(sys.argv) > 1 else "_site").resolve()
    if dest.exists():
        shutil.rmtree(dest)
    dest.mkdir(parents=True)
    subprocess.run(
        ["rsync", "-aL", "--delete", f"{SRC}/", f"{dest}/"],
        check=True,
    )
    for pkg in PACKAGES:
        html = dest / pkg / "index.html"
        if html.exists():
            html.write_text(REDIRECT, encoding="utf-8")
    leftover = list(dest.rglob("*"))
    symlinks = [p for p in leftover if p.is_symlink()]
    if symlinks:
        raise SystemExit(f"leftover symlinks: {symlinks[:5]}")
    files = [p for p in leftover if p.is_file()]
    print(f"staged {len(files)} files in {dest}")
    for pkg in PACKAGES:
        print(f"  redirect {pkg}/index.html")


if __name__ == "__main__":
    main()
