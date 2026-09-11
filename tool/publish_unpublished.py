#!/usr/bin/env python3
"""Publish workspace packages whose version is not yet on pub.dev."""

from __future__ import annotations

import json
import os
import subprocess
import sys
import time
import urllib.error
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

# Dependency order: annotations first, basic last.
PACKAGES = [
    "packages/mantle_annotations",
    "packages/mantle_core",
    "packages/mantle_gen",
    "packages/mantle_widgets",
    "packages/mantle_basic",
]

PUB_VERSION = "https://pub.dev/api/packages/{name}/versions/{version}"
WAIT_SECS = 45


def pubspec_field(path: Path, key: str) -> str:
    for line in path.read_text(encoding="utf-8").splitlines():
        if line.startswith(f"{key}:"):
            return line.split(":", 1)[1].strip()
    raise SystemExit(f"{path}: missing {key}")


def version_on_pub(name: str, version: str) -> bool:
    url = PUB_VERSION.format(name=name, version=version)
    req = urllib.request.Request(
        url,
        headers={
            "Accept": "application/vnd.pub.v2+json",
            "User-Agent": "mantle-publish",
        },
    )
    try:
        with urllib.request.urlopen(req, timeout=30) as resp:
            return 200 <= resp.status < 300
    except urllib.error.HTTPError as e:
        if e.code == 404:
            return False
        raise


def pending() -> list[tuple[str, str, Path]]:
    queued: list[tuple[str, str, Path]] = []
    for rel in PACKAGES:
        pubspec = ROOT / rel / "pubspec.yaml"
        name = pubspec_field(pubspec, "name")
        version = pubspec_field(pubspec, "version")
        if version_on_pub(name, version):
            print(f"skip {name} {version} (already on pub.dev)", flush=True)
            continue
        print(f"queue {name} {version}", flush=True)
        queued.append((name, version, ROOT / rel))
    return queued


def write_credentials() -> None:
    raw = os.environ.get("PUB_CREDENTIALS", "").strip()
    if not raw:
        raise SystemExit(
            "PUB_CREDENTIALS is empty. Add a GitHub Actions secret named "
            "PUB_CREDENTIALS with the contents of "
            "~/.pub-cache/credentials.json or "
            "~/.config/dart/pub-credentials.json (from `dart pub login`)."
        )
    try:
        json.loads(raw)
    except json.JSONDecodeError as e:
        raise SystemExit(f"PUB_CREDENTIALS is not valid JSON: {e}") from e
    for dest in (
        Path.home() / ".pub-cache" / "credentials.json",
        Path.home() / ".config" / "dart" / "pub-credentials.json",
    ):
        dest.parent.mkdir(parents=True, exist_ok=True)
        dest.write_text(raw, encoding="utf-8")
        dest.chmod(0o600)


def main() -> int:
    queued = pending()
    if not queued:
        print("nothing to publish")
        return 0

    write_credentials()
    for i, (name, version, path) in enumerate(queued):
        if i:
            print(
                f"waiting {WAIT_SECS}s for pub.dev to index the previous package",
                flush=True,
            )
            time.sleep(WAIT_SECS)
        print(f"publishing {name} {version} from {path}", flush=True)
        subprocess.run(
            ["dart", "pub", "publish", "--force"],
            cwd=path,
            check=True,
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
