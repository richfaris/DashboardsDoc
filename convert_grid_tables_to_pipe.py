#!/usr/bin/env python3
"""Convert grid-formatted tables to pipe tables in dashboard markdown files."""

import re
import sys
from pathlib import Path

def normalize_nbsp(s: str) -> str:
    return s.replace("\u00a0", " ")

def is_dash_line(line: str) -> bool:
    """True if line is only leading spaces and dashes (and maybe one space between dash groups)."""
    stripped = line.strip()
    return bool(stripped) and all(c in " -" for c in stripped) and "-" in stripped

def parse_grid_table(lines: list[str], start: int) -> tuple[list[tuple[str, str]], int] | None:
    """
    Parse a grid table starting at lines[start] (opening dash line).
    Returns (rows as list of (col1, col2), end_index) or None if not a valid table.
    """
    if start >= len(lines) or not is_dash_line(lines[start]):
        return None
    # Next non-blank should be header
    i = start + 1
    while i < len(lines) and not lines[i].strip():
        i += 1
    if i >= len(lines):
        return None
    header_line = lines[i].strip()
    parts = re.split(r"  +", header_line, maxsplit=1)
    if len(parts) != 2:
        return None
    col1_name, col2_name = parts[0].strip(), parts[1].strip()
    i += 1
    # Skip separator line (dashes)
    while i < len(lines) and (not lines[i].strip() or is_dash_line(lines[i])):
        i += 1
    rows = [(col1_name, col2_name)]
    while i < len(lines):
        line = lines[i]
        if is_dash_line(line):
            return (rows, i)
        stripped = line.strip()
        if stripped:
            parts = re.split(r"  +", stripped, maxsplit=1)
            if len(parts) == 2:
                rows.append((parts[0].strip(), parts[1].strip()))
        i += 1
    return None

def pipe_table(rows: list[tuple[str, str]]) -> str:
    if not rows:
        return ""
    lines = []
    lines.append("| " + " | ".join(rows[0]) + " |")
    lines.append("|" + "|".join("---" for _ in rows[0]) + "|")
    for r in rows[1:]:
        lines.append("| " + " | ".join(r) + " |")
    return "\n".join(lines)

def convert_file(path: Path) -> bool:
    content = path.read_text(encoding="utf-8")
    content = normalize_nbsp(content)
    lines = content.splitlines(keepends=True)
    if not lines:
        return False
    # Ensure we have newlines
    for idx in range(len(lines)):
        if not lines[idx].endswith("\n"):
            lines[idx] = lines[idx] + "\n"
    i = 0
    out = []
    changed = False
    while i < len(lines):
        if is_dash_line(lines[i].rstrip("\n")):
            result = parse_grid_table([l.rstrip("\n") for l in lines], i)
            if result is not None:
                rows, end_idx = result
                table_text = pipe_table(rows)
                out.append(table_text + "\n")
                i = end_idx + 1
                changed = True
                continue
        out.append(lines[i])
        i += 1
    if changed:
        path.write_text("".join(out), encoding="utf-8")
    return changed

def main():
    base = Path(__file__).resolve().parent
    files = [
        base / "claims-manager-dashboard.md",
        base / "ceo-dashboard.md",
        base / "agency-principal-dashboard.md",
        base / "cfo-dashboard.md",
        base / "underwriting-manager-dashboard.md",
    ]
    for f in files:
        if f.exists():
            if convert_file(f):
                print("Converted:", f.name)
            else:
                print("No grid tables (or already pipe):", f.name)
        else:
            print("Skip (not found):", f.name)

if __name__ == "__main__":
    main()
