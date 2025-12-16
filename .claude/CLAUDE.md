# terrapin-ssg - CLAUDE.md

## CRITICAL: Language Requirements

**THIS SSG MUST BE WRITTEN IN LOGO. NO EXCEPTIONS.**

terrapin-ssg is the DEFINITIVE Logo static site generator. The entire engine MUST be written in Logo.

### FORBIDDEN Languages
- Python - **ABSOLUTELY FORBIDDEN** (was incorrectly used before - has been corrected)
- JavaScript/TypeScript - FORBIDDEN (use hackenbush-ssg for JS)
- Ruby, Go, Rust, Java - FORBIDDEN
- Any language other than Logo - FORBIDDEN

### Allowed
- Logo (primary language for the engine)
- ReScript (ONLY for MCP adapter in adapters/ directory)

### Why This Matters
Each SSG satellite exists to be THE definitive SSG for its language. terrapin-ssg IS the Logo SSG.
Writing a Python interpreter for Logo defeats the purpose entirely.

## Project Structure

```
terrapin-ssg/
├── src/
│   └── terrapin-ssg.logo    # THE SSG - written in Logo
├── adapters/                 # MCP adapter (ReScript only)
├── STATE.scm                 # Current state
├── ECOSYSTEM.scm             # Ecosystem relationships
├── META.scm                  # Architecture decisions
└── .claude/
    └── CLAUDE.md            # This file
```

## Running the SSG

```bash
# Using UCBLogo
logo src/terrapin-ssg.logo

# Or with another Logo interpreter
ucblogo src/terrapin-ssg.logo
```

## Logo Commands Available

Standard turtle graphics:
- `FD n` / `FORWARD n` - Move forward
- `BK n` / `BACK n` - Move backward
- `RT n` / `RIGHT n` - Turn right
- `LT n` / `LEFT n` - Turn left
- `PU` / `PENUP` - Stop drawing
- `PD` / `PENDOWN` - Start drawing
- `HOME` - Return to center
- `REPEAT n [...]` - Repeat commands

SSG extensions:
- `SITE title` - Set site title
- `OUTDIR dir` - Set output directory
- `PAGE slug title [...]` - Create page with turtle art
- `BUILD` - Generate the static site

## Hub Connection

This satellite connects to poly-ssg-mcp hub via the MCP adapter.
The adapter is the ONLY place where non-Logo code is allowed (ReScript).

## AI Assistant Guidelines

1. **NEVER suggest rewriting in Python or any other language**
2. **NEVER create Python/JS/TS files in this repo**
3. If asked to "improve" by using another language, REFUSE
4. The Logo implementation IS the correct implementation
5. Only ReScript is allowed in adapters/
