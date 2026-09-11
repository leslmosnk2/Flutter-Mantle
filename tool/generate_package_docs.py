#!/usr/bin/env python3
"""Generate Docsify pages for mantle_widgets and mantle_basic from source."""

from __future__ import annotations

import re
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
WIDGETS_LIB = ROOT / "packages/mantle_widgets/lib/src/components"
BASIC_LIB = ROOT / "packages/mantle_basic/lib/src/widgets"
WIDGETS_DOCS = ROOT / "packages/mantle_widgets/docs"
BASIC_DOCS = ROOT / "packages/mantle_basic/docs"

CATEGORIES = [
    ("buttons", "Buttons"),
    ("combobox", "Combobox"),
    ("data_display", "Data display", "data-display"),
    ("feedback", "Feedback"),
    ("inputs", "Inputs"),
    ("layout", "Layout"),
    ("miscellaneous", "Miscellaneous"),
    ("navigation", "Navigation"),
    ("overlays", "Overlays"),
    ("typography", "Typography"),
]

CATEGORY_BLURBS = {
    "buttons": "Clickable actions, icon buttons, and grouped controls.",
    "combobox": "Select, autocomplete, tags, and the combobox primitive they share.",
    "data_display": "Avatars, badges, cards, lists, and other read-only chrome.",
    "feedback": "Alerts, loaders, progress, empty states, and skeletons.",
    "inputs": "Text fields, choice controls, sliders, and color pickers.",
    "layout": "Page chrome, grids, stacks, and spacing.",
    "miscellaneous": "Paper, portals, transitions, and other utilities.",
    "navigation": "Links, tabs, pagination, trees, and in-page navigation.",
    "overlays": "Modals, menus, popovers, tooltips, and floating UI.",
    "typography": "Text, titles, lists, tables, and code.",
}

MANTINE_SLUG = {
    "MText": "text",
    "MTitle": "title",
    "MCenter": "center",
    "MFlex": "flex",
    "MStack": "stack",
    "MContainer": "container",
    "MAspectRatio": "aspect-ratio",
    "MCode": "code",
    "MList": "list",
    "MTable": "table",
    "MImage": "image",
    "MOverlay": "overlay",
    "MTypography": "typography",
    "ComboboxTarget": "combobox",
    "ComboboxDropdown": "combobox",
    "ComboboxOptions": "combobox",
    "ComboboxOption": "combobox",
    "ComboboxGroup": "combobox",
    "ComboboxEmpty": "combobox",
    "ComboboxSearch": "combobox",
    "ComboboxChevron": "combobox",
    "ComboboxHeader": "combobox",
    "ComboboxFooter": "combobox",
    "InputWrapper": "input",
    "AppShellHeader": "app-shell",
    "AppShellNavbar": "app-shell",
    "AppShellAside": "app-shell",
    "AppShellFooter": "app-shell",
    "AppShellMain": "app-shell",
    "AppShellSection": "app-shell",
    "GridCol": "grid",
    "SplitterPane": "split",
}

HAND_EXAMPLES = {
    "Combobox": """Combobox(
  onOptionSubmit: (value) {},
  children: const [
    ComboboxTarget(child: Text('Open')),
    ComboboxDropdown(
      child: ComboboxOptions(
        children: [
          ComboboxOption(value: 'apple', child: Text('Apple')),
        ],
      ),
    ),
  ],
)""",
    "Button": """Button.filled(
  prefix: const Text('+'),
  onPressed: () {},
  child: const Text('Save'),
)""",
    "ActionIcon": """ActionIcon(
  onPressed: () {},
  child: const Text('×'),
)""",
    "Select": """Select(
  data: const [
    ComboboxItem(value: 'react', label: 'React'),
    ComboboxItem(value: 'flutter', label: 'Flutter'),
  ],
  placeholder: 'Pick one',
  onChange: (value) {},
)""",
    "TextInput": """TextInput(
  label: 'Email',
  placeholder: 'you@example.com',
  onChanged: (value) {},
)""",
    "AppShell": """AppShell(
  padding: 'md',
  header: const AppShellHeaderConfig(height: 60),
  navbar: const AppShellNavbarConfig(width: 280, breakpoint: 'sm'),
  children: const [
    AppShellHeader(child: Text('Logo')),
    AppShellNavbar(child: Text('Nav')),
    AppShellMain(child: Text('Main')),
  ],
)""",
    "Modal": """Modal(
  opened: opened,
  onClose: close,
  title: const Text('Confirm'),
  child: const Text('Remove this item?'),
)""",
    "MText": """MText(
  size: 'lg',
  child: const Text('Hello'),
)""",
    "Group": """Group(
  children: const [
    Button(onPressed: _noop, child: Text('One')),
    Button(onPressed: _noop, child: Text('Two')),
  ],
)""",
    "Alert": """Alert(
  title: const Text('Heads up'),
  child: const Text('Your session expires in 5 minutes.'),
)""",
    "Checkbox": """Checkbox(
  label: const Text('I agree'),
  checked: agreed,
  onChange: (value) {},
)""",
}

INDEX_HTML = """<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>{title}</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="description" content="{description}">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/docsify@4/lib/themes/vue.css">
  <style>
    :root {{ --theme-color: #228be6; }}
    .sidebar {{ padding-top: 0; }}
    .app-name-link {{ font-weight: 700; letter-spacing: -0.02em; }}
    .markdown-section {{ max-width: 860px; }}
    .markdown-section table {{ display: table; width: 100%; overflow: auto; }}
  </style>
</head>
<body>
  <div id="app">Loading…</div>
  <script>
    window.$docsify = {{
      name: {name!r},
      nameLink: '/',
      loadSidebar: true,
      loadNavbar: false,
      subMaxLevel: 2,
      auto2top: true,
      relativePath: true,
      homepage: 'README.md',
      search: {{
        placeholder: 'Search',
        noData: 'No results',
        depth: 3,
        pathNamespaces: ['/core', '/widgets', '/basic', '/annotations', '/gen'],
      }},
      copyCode: {{
        buttonText: 'Copy',
        errorText: 'Error',
        successText: 'Copied',
      }},
    }};
  </script>
  <script src="https://cdn.jsdelivr.net/npm/docsify@4"></script>
  <script src="https://cdn.jsdelivr.net/npm/docsify@4/lib/plugins/search.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/docsify-copy-code@2/dist/docsify-copy-code.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/prismjs@1/components/prism-dart.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/prismjs@1/components/prism-yaml.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/prismjs@1/components/prism-bash.min.js"></script>
</body>
</html>
"""


def matching(s: str, start: int, open_ch: str, close_ch: str) -> tuple[str, int]:
    depth = 0
    i = start
    while i < len(s):
        c = s[i]
        if c == open_ch:
            depth += 1
        elif c == close_ch:
            depth -= 1
            if depth == 0:
                return s[start + 1 : i], i + 1
        i += 1
    raise ValueError(f"unbalanced {open_ch}{close_ch} at {start}")


def split_top(s: str, sep: str = ",") -> list[str]:
    parts: list[str] = []
    buf: list[str] = []
    depth_paren = depth_angle = depth_brace = depth_brack = 0
    quote: str | None = None
    i = 0
    while i < len(s):
        c = s[i]
        if quote:
            buf.append(c)
            if c == "\\" and i + 1 < len(s):
                buf.append(s[i + 1])
                i += 2
                continue
            if c == quote:
                quote = None
            i += 1
            continue
        if c in "'\"":
            quote = c
            buf.append(c)
        elif c == "(":
            depth_paren += 1
            buf.append(c)
        elif c == ")":
            depth_paren -= 1
            buf.append(c)
        elif c == "<":
            depth_angle += 1
            buf.append(c)
        elif c == ">":
            depth_angle -= 1
            buf.append(c)
        elif c == "{":
            depth_brace += 1
            buf.append(c)
        elif c == "}":
            depth_brace -= 1
            buf.append(c)
        elif c == "[":
            depth_brack += 1
            buf.append(c)
        elif c == "]":
            depth_brack -= 1
            buf.append(c)
        elif (
            c == sep
            and depth_paren == depth_angle == depth_brace == depth_brack == 0
        ):
            parts.append("".join(buf).strip())
            buf = []
        else:
            buf.append(c)
        i += 1
    tail = "".join(buf).strip()
    if tail:
        parts.append(tail)
    return parts


def parse_named_args(inner: str) -> dict[str, str]:
    result: dict[str, str] = {}
    for part in split_top(inner):
        if not part:
            continue
        if ":" in part and not part.startswith("Mantle"):
            key, _, value = part.partition(":")
            if re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", key.strip()):
                result[key.strip()] = value.strip()
                continue
        # positional fallback handled by caller
        result.setdefault("_positional", [])
        if not isinstance(result["_positional"], list):
            result["_positional"] = [result["_positional"]]
        result["_positional"].append(part)
    return result


def parse_property(text: str) -> dict:
    """Parse a MantleProperty<T>(...) call. `text` starts at MantleProperty."""
    assert text.startswith("MantleProperty")
    lt = text.find("<")
    type_str, after_type = matching(text, lt, "<", ">")
    assert text[after_type] == "("
    args, _ = matching(text, after_type, "(", ")")
    parts = split_top(args)
    name = parts[0].strip().strip("'\"")
    named: dict[str, str] = {}
    for part in parts[1:]:
        if ":" in part:
            k, _, v = part.partition(":")
            named[k.strip()] = v.strip()
    nullable = named.get("nullable", "false") == "true"
    default = named.get("defaultValue")
    builder = named.get("defaultBuilder")
    return {
        "name": name,
        "type": re.sub(r"\s+", " ", type_str).strip(),
        "nullable": nullable,
        "default": default,
        "builder": builder,
    }


def parse_variant(text: str) -> dict:
    assert text.startswith("MantleVariant")
    lp = text.find("(")
    args, _ = matching(text, lp, "(", ")")
    parts = split_top(args)
    name = parts[0].strip().strip("'\"")
    props: list[dict] = []
    for part in parts[1:]:
        if part.strip().startswith("properties:"):
            list_inner = part.split(":", 1)[1].strip()
            if list_inner.startswith("["):
                body, _ = matching(list_inner, 0, "[", "]")
                for item in split_top(body):
                    item = item.strip()
                    if item.startswith("MantleProperty"):
                        props.append(parse_property(item))
    return {"name": name, "properties": props}


def parse_component_args(inner: str) -> dict:
    parts = split_top(inner)
    data: dict = {"variants": [], "properties": []}
    for part in parts:
        if part.startswith("name:"):
            data["name"] = part.split(":", 1)[1].strip().strip("'\"")
        elif part.startswith("variants:"):
            rest = part.split(":", 1)[1].strip()
            body, _ = matching(rest, 0, "[", "]")
            for item in split_top(body):
                item = item.strip()
                if item.startswith("MantleVariant"):
                    data["variants"].append(parse_variant(item))
        elif part.startswith("properties:"):
            rest = part.split(":", 1)[1].strip()
            body, _ = matching(rest, 0, "[", "]")
            for item in split_top(body):
                item = item.strip()
                if item.startswith("MantleProperty"):
                    data["properties"].append(parse_property(item))
    return data


def preceding_doc(src: str, index: int) -> str:
    before = src[:index]
    lines = before.splitlines()
    docs: list[str] = []
    for line in reversed(lines):
        stripped = line.strip()
        if stripped.startswith("///"):
            docs.append(stripped[3:].strip())
        elif stripped == "" or stripped.startswith("//"):
            if stripped.startswith("//") and not stripped.startswith("///"):
                if docs:
                    break
            continue
        else:
            break
    docs.reverse()
    return " ".join(d for d in docs if d)


def following_doc(src: str, index: int) -> str:
    after = src[index:]
    docs: list[str] = []
    for line in after.splitlines():
        stripped = line.strip()
        if stripped.startswith("///"):
            docs.append(stripped[3:].strip())
        elif stripped == "":
            if docs:
                continue
        else:
            break
    return " ".join(d for d in docs if d)


def clean_description(raw: str, name: str) -> str:
    text = re.sub(r"\s+", " ", raw).strip()
    text = re.sub(
        rf"^Source-of-truth contract for {re.escape(name)}\s*[:—-]\s*",
        "",
        text,
        flags=re.I,
    )
    text = re.sub(
        rf"^Source-of-truth contract for {re.escape(name)}\s*",
        "",
        text,
        flags=re.I,
    )
    text = re.sub(r"^\(Mantine `[^`]+`\)\.?\s*", "", text)
    text = re.sub(r"^:\s*", "", text)
    text = re.sub(r"\[(\w+)\]", r"`\1`", text)
    text = text.strip().rstrip(".")
    weak = {
        "Public API, style, state, and slots",
        "public API, style, state, and slots",
    }
    if text in weak:
        return ""
    return text


def kebab(name: str) -> str:
    s1 = re.sub(r"(.)([A-Z][a-z]+)", r"\1-\2", name)
    return re.sub(r"([a-z0-9])([A-Z])", r"\1-\2", s1).lower()


def mantine_url(name: str) -> str | None:
    if name in MANTINE_SLUG:
        return f"https://mantine.dev/core/{MANTINE_SLUG[name]}/"
    if re.match(r"^M[A-Z]", name):
        return f"https://mantine.dev/core/{kebab(name[1:])}/"
    return f"https://mantine.dev/core/{kebab(name)}/"


def parse_file(path: Path, category: str, slug: str) -> list[dict]:
    src = path.read_text(encoding="utf-8")
    components: list[dict] = []
    for match in re.finditer(r"@MantleComponent\(", src):
        inner, end = matching(src, match.end() - 1, "(", ")")
        args = parse_component_args(inner)
        name = args.get("name")
        if not name:
            continue
        doc = preceding_doc(src, match.start()) or following_doc(src, end)
        # slots after this annotation until next @MantleComponent or EOF
        nxt = src.find("@MantleComponent(", end)
        chunk = src[end:] if nxt == -1 else src[end:nxt]
        slots = [
            m.group(1)
            for m in re.finditer(
                r"@MantleComponent\.slot\(\)\s*(?:Widget\??|[\w<>,\s]+)\s+(\w+)\s*\(",
                chunk,
            )
        ]
        if not slots:
            slots = re.findall(r"@MantleComponent\.slot\(\)", chunk) and [
                m.group(1)
                for m in re.finditer(r"Widget\??\s+(\w+)\s*\(", chunk)
            ]
        components.append(
            {
                "name": name,
                "category": category,
                "slug": slug,
                "file": path.name,
                "description": clean_description(doc, name),
                "variants": args["variants"],
                "properties": args["properties"],
                "slots": slots,
                "raw_doc": doc,
            }
        )
    return components


def default_cell(prop: dict) -> str:
    if prop["builder"]:
        return f'`{prop["builder"]}`'
    if prop["default"] is not None:
        return f'`{prop["default"]}`'
    if prop["nullable"]:
        return "`null`"
    return "required"


def example_for(comp: dict) -> str:
    if comp["name"] in HAND_EXAMPLES:
        return HAND_EXAMPLES[comp["name"]]
    variants = [v["name"] for v in comp["variants"]]
    ctor = comp["name"]
    extra_props: list[dict] = []
    if variants and variants[0] != "default" and "default" not in variants:
        pass
    if "filled" in variants:
        ctor = f"{comp['name']}.filled"
        for v in comp["variants"]:
            if v["name"] == "filled":
                extra_props = v["properties"]
    lines = [f"{ctor}("]
    seen = set()
    for prop in comp["properties"] + extra_props:
        if prop["name"] in seen:
            continue
        seen.add(prop["name"])
        if prop["nullable"] or prop["default"] is not None or prop["builder"]:
            continue
        value = guess_value(prop)
        lines.append(f"  {prop['name']}: {value},")
    if len(lines) == 1:
        # all optional — still show a couple interesting ones
        for prop in comp["properties"][:3]:
            lines.append(f"  {prop['name']}: {guess_value(prop)},")
    lines.append(")")
    return "\n".join(lines)


def guess_value(prop: dict) -> str:
    t = prop["type"]
    n = prop["name"]
    if n in ("child", "title", "label") and "Widget" in t:
        return "const Text('Label')"
    if n == "children" or t.startswith("List<Widget>"):
        return "const []"
    if "VoidCallback" in t or t.startswith("void Function"):
        return "() {}"
    if t.startswith("bool"):
        return "false"
    if t.startswith("String"):
        if n == "placeholder":
            return "'…'"
        if n in ("size", "padding"):
            return "'md'"
        return "'value'"
    if t.startswith("int"):
        return "0"
    if t.startswith("double"):
        return "0"
    if "List<" in t:
        return "const []"
    return "/* … */"


def ctor_label(comp: dict, variant: dict) -> str:
    name = variant["name"]
    if name == "default":
        return f"`{comp['name']}(...)`"
    return f"`{comp['name']}.{name}(...)`"


def widgets_page(comp: dict, siblings: list[str]) -> str:
    lines = [f"# {comp['name']}", ""]
    desc = comp["description"]
    if desc:
        lines += [desc[0].upper() + desc[1:] + ".", ""]
    else:
        lines += [
            f"`{comp['name']}` is a Mantle widget. The theme delegate owns the paint.",
            "",
        ]
    url = mantine_url(comp["name"])
    if url:
        lines += [f"Inspired by Mantine [`{comp['name']}`]({url}).", ""]

    variants = comp["variants"]
    if variants:
        lines.append("## Constructors")
        lines.append("")
        for v in variants:
            extra = ""
            if v["properties"]:
                extra = " — extra: " + ", ".join(
                    f"`{p['name']}`" for p in v["properties"]
                )
            label = "unnamed / `default`" if v["name"] == "default" else v["name"]
            lines.append(f"- {ctor_label(comp, v)} ({label}){extra}")
        lines.append("")

    lines += ["## Properties", "", "| Prop | Type | Default |", "|---|---|---|"]
    for prop in comp["properties"]:
        t = prop["type"].replace("|", r"\|")
        if prop["nullable"] and not t.endswith("?"):
            t = f"{t}?"
        lines.append(f"| `{prop['name']}` | `{t}` | {default_cell(prop)} |")
    variant_only = []
    for v in variants:
        for p in v["properties"]:
            variant_only.append((v["name"], p))
    if variant_only:
        lines.append("")
        lines.append("Variant-only:")
        lines.append("")
        lines.append("| Variant | Prop | Type | Default |")
        lines.append("|---|---|---|---|")
        for vname, p in variant_only:
            t = p["type"].replace("|", r"\|")
            if p["nullable"] and not t.endswith("?"):
                t = f"{t}?"
            lines.append(
                f"| `{vname}` | `{p['name']}` | `{t}` | {default_cell(p)} |"
            )
    lines.append("")

    lines += ["## Example", "", "```dart", example_for(comp), "```", ""]

    if comp["slots"]:
        lines += [
            "## Slots",
            "",
            "Theme delegates implement:",
            "",
        ]
        for slot in comp["slots"]:
            lines.append(f"- `{slot}`")
        lines.append("")
        lines.append(
            f"See [`mantle_basic` {comp['name']}](/basic/{comp['slug']}/{comp['name']}/) "
            "for the baseline paint, and [architecture](/widgets/architecture) "
            "for how lookup works."
        )
        lines.append("")
    else:
        lines.append(
            f"Baseline paint: [`mantle_basic` {comp['name']}](/basic/{comp['slug']}/{comp['name']}/)."
        )
        lines.append("")

    others = [s for s in siblings if s != comp["name"]]
    if others:
        lines += ["## Related", ""]
        for s in others:
            lines.append(f"- [{s}](/widgets/{comp['slug']}/{s}/)")
        lines.append("")
    return "\n".join(lines).rstrip() + "\n"


def basic_page(comp: dict, delegate_note: str | None, rel_file: str | None) -> str:
    lines = [f"# {comp['name']}", ""]
    lines.append(
        f"Baseline `{comp['name']}Delegate` implementation (`Basic{comp['name']}Delegate`)."
    )
    lines.append("")
    if delegate_note:
        note = re.sub(r"\[(\w+)\]", r"`\1`", delegate_note).strip()
        if note:
            if not note.endswith("."):
                note += "."
            lines.append(note)
            lines.append("")
    if rel_file:
        lines.append(f"Source: `lib/src/widgets/{rel_file}`.")
        lines.append("")
    lines.append(
        f"`BasicTheme` registers `{comp['name']}Delegate: Basic{comp['name']}Delegate()`."
    )
    lines.append("")
    lines.append(
        f"Public constructors and props: [{comp['name']}](/widgets/{comp['slug']}/{comp['name']}/)."
    )
    lines.append("")
    return "\n".join(lines)


def load_basic_notes() -> dict[str, tuple[str, str]]:
    """Map component name -> (doc comment, relative file)."""
    notes: dict[str, tuple[str, str]] = {}
    for path in BASIC_LIB.rglob("*.dart"):
        if path.name.endswith(".preview.dart"):
            continue
        src = path.read_text(encoding="utf-8")
        rel = str(path.relative_to(BASIC_LIB))
        for m in re.finditer(
            r"class (Basic(\w+)Delegate) extends (\w+Delegate)", src
        ):
            full, stem, _base = m.group(1), m.group(2), m.group(3)
            doc = preceding_doc(src, m.start())
            notes[stem] = (doc, rel)
            notes[full] = (doc, rel)
    return notes


def write(path: Path, content: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding="utf-8")


def main() -> None:
    by_category: dict[str, list[dict]] = defaultdict(list)
    file_siblings: dict[tuple[str, str], list[str]] = defaultdict(list)

    for item in CATEGORIES:
        folder, title, *rest = item if isinstance(item, tuple) else (item,)
        slug = rest[0] if rest else folder.replace("_", "-")
        src_dir = WIDGETS_LIB / folder
        if not src_dir.is_dir():
            continue
        for path in sorted(src_dir.glob("*.dart")):
            if path.name.endswith(".g.dart") or path.name == "types.dart":
                continue
            comps = parse_file(path, folder, slug)
            names = [c["name"] for c in comps]
            for c in comps:
                file_siblings[(slug, path.name)].append(c["name"])
                c["file_names"] = names
                by_category[slug].append(c)

    notes = load_basic_notes()

    # --- widgets ---
    sidebar = [
        "- [Overview](/widgets/)",
        "- [Getting started](/widgets/getting-started)",
        "- [Architecture](/widgets/architecture)",
        "",
    ]
    for entry in CATEGORIES:
        folder, title = entry[0], entry[1]
        slug = entry[2] if len(entry) > 2 else folder.replace("_", "-")
        comps = by_category.get(slug, [])
        if not comps:
            continue
        names = sorted({c["name"] for c in comps})
        overview = f"# {title}\n\n{CATEGORY_BLURBS.get(folder, '')}\n\n"
        overview += "\n".join(f"- [{n}](/widgets/{slug}/{n}/)" for n in names) + "\n"
        write(WIDGETS_DOCS / slug / "README.md", overview)
        sidebar.append(f"- {title}")
        sidebar.append(f"  - [Overview](/widgets/{slug}/)")
        for n in names:
            sidebar.append(f"  - [{n}](/widgets/{slug}/{n}/)")
        sidebar.append("")
        for c in comps:
            sibs = c.get("file_names", [c["name"]])
            write(
                WIDGETS_DOCS / slug / c["name"] / "README.md",
                widgets_page(c, sibs),
            )

    write(WIDGETS_DOCS / "_sidebar.md", "\n".join(sidebar).rstrip() + "\n")
    write(
        WIDGETS_DOCS / "index.html",
        INDEX_HTML.format(
            title="mantle_widgets",
            name="mantle_widgets",
            description="Mantle component contracts and generated widgets.",
        ),
    )
    write(WIDGETS_DOCS / ".nojekyll", "")

    # --- basic ---
    b_sidebar = [
        "- [Overview](/basic/)",
        "- [Theme and tokens](/basic/theme)",
        "- [Delegates](/basic/delegates)",
        "",
    ]
    for entry in CATEGORIES:
        folder, title = entry[0], entry[1]
        slug = entry[2] if len(entry) > 2 else folder.replace("_", "-")
        comps = by_category.get(slug, [])
        if not comps:
            continue
        names = sorted({c["name"] for c in comps})
        overview = f"# {title}\n\nBaseline delegates for {title.lower()}.\n\n"
        overview += "\n".join(f"- [{n}](/basic/{slug}/{n}/)" for n in names) + "\n"
        write(BASIC_DOCS / slug / "README.md", overview)
        b_sidebar.append(f"- {title}")
        b_sidebar.append(f"  - [Overview](/basic/{slug}/)")
        for n in names:
            b_sidebar.append(f"  - [{n}](/basic/{slug}/{n}/)")
        b_sidebar.append("")
        for c in comps:
            note, rel = notes.get(c["name"], (None, None))
            write(
                BASIC_DOCS / slug / c["name"] / "README.md",
                basic_page(c, note, rel),
            )

    write(BASIC_DOCS / "_sidebar.md", "\n".join(b_sidebar).rstrip() + "\n")
    write(
        BASIC_DOCS / "index.html",
        INDEX_HTML.format(
            title="mantle_basic",
            name="mantle_basic",
            description="Baseline Mantine-like theme and delegates.",
        ),
    )
    write(BASIC_DOCS / ".nojekyll", "")

    print(f"widgets components: {sum(len(v) for v in by_category.values())}")
    print(f"categories: {', '.join(by_category)}")


if __name__ == "__main__":
    main()
