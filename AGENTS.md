# Repository Guidelines

## Project Structure & Module Organization
- `init.lua` wires the config, loading `lua/config` for core options/keymaps and `lua/functions` for small helpers.
- Plugin specs live in `lua/plugins/*.lua`; keep one plugin (or a tight group) per file to match the existing Lazy setup.
- `lazy-lock.json` pins plugin versions—update it only when intentionally bumping dependencies.
- `package.py` packages the config and cached parsers; adjust paths or temp dirs there rather than sprinkling shell commands elsewhere.

## Build, Test, and Development Commands
- Install/sync plugins headlessly to validate a clean bootstrap:
  ```bash
  nvim --headless "+Lazy! sync" +qa
  ```
- Run Neovim health checks after changing providers or LSPs:
  ```bash
  nvim --headless "+checkhealth" +qa
  ```
- Package a distributable archive (writes to `--out`, default `.`):
  ```bash
  python package.py --out dist --temp /tmp
  ```
- Unpack a prepared archive:
  ```bash
  python package.py --unpack
  ```

## Coding Style & Naming Conventions
- Lua files use 4-space indentation; keep option blocks compact and declarative.
- Module names and local helpers favor `snake_case`; exported tables for plugins use `return { ... }` with clear keys.
- Place new keymaps in `lua/config/keybindings.lua`; core options in `lua/config/basic.lua`; avoid ad-hoc globals.
- Plugin additions should follow existing Lazy patterns (single table per file, `dependencies` and `config` inline).

## Testing Guidelines
- There are no automated tests; smoke-test by launching `nvim` and exercising modified plugins.
- For Treesitter/LSP changes, run `:TSUpdate` or `:LspInfo` interactively and confirm no errors in `:messages`.
- After edits that affect startup, re-run the headless `Lazy! sync` command to catch missing deps early.

## Commit & Pull Request Guidelines
- Git history uses short prefixes like `feat:` and `bugfix:` (see `git log --oneline`); continue that imperative style.
- Keep PRs focused: describe the user-visible effect (e.g., new mapping, plugin upgrade) and note any required external tools (clangd, python3).
- Include before/after notes or screenshots for UI-facing changes (statusline, colors, tree view) when applicable.
- Mention testing done (headless sync, `:checkhealth`, manual navigation) so reviewers can reproduce quickly.
