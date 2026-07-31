# nvim config

A Neovim configuration built around [lazy.nvim](https://github.com/folke/lazy.nvim), with LSP support,
autocompletion, fuzzy finding, and git integration. Written primarily for C/C++ development
(embedded/ESP-IDF work), but works fine as a general-purpose setup too.

## Features

- **Plugin management** — lazy.nvim, auto-installs everything on first launch
- **Colorscheme** — rose-pine
- **Fuzzy finding** — telescope (files, live grep, buffers, help tags)
- **Syntax highlighting** — treesitter, with parsers for C, C++, CMake, Lua, JS/TS, Rust
- **Undo history** — undotree, with persistent undo across sessions
- **LSP** — clangd for C/C++, installed and managed via mason.nvim
- **Autocompletion** — nvim-cmp with LSP and snippet sources (LuaSnip)
- **Formatting** — conform.nvim, runs clang-format on save for C/C++
- **Git integration** — gitsigns.nvim (gutter change markers)
- **Keymap discovery** — which-key.nvim (shows available bindings after pressing leader)
- **Terminal** — toggleterm.nvim, floating terminal on demand

## Install

```bash
git clone <this repo> ~/.config/nvim
nvim
```

Lazy.nvim bootstraps itself and installs all plugins on first launch. Treesitter will also
compile parsers, which takes a few seconds and requires a C compiler on your system.

## System dependencies

These aren't managed by nvim and need to be installed separately:

| Tool | Used for | Install (Debian/Ubuntu) |
|---|---|---|
| `git` | plugin management, gitsigns | `sudo apt install git` |
| a C compiler | building treesitter parsers | `sudo apt install build-essential` |
| `ripgrep` | telescope's live grep | `sudo apt install ripgrep` |
| `clangd` | C/C++ LSP | `sudo apt install clangd`, or install via `:Mason` inside nvim |
| `clang-format` | C/C++ formatting on save | `sudo apt install clang-format` |
| `stylua` | formatting this config's own `.lua` files (optional) | `cargo install stylua` |

## Keymaps

Leader key is `<Space>`.

| Keymap | Action |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find open buffers |
| `<leader>fh` | Search help tags |
| `<leader>u` | Toggle undotree |
| `<leader>go` | Open netrw file explorer |
| `<leader>e` | Show diagnostic under cursor |
| `<leader>rn` | Rename symbol (LSP) |
| `<leader>ca` | Code action (LSP) |
| `gd` | Go to definition |
| `gr` | Find references |
| `K` | Hover documentation |
| `[d` / `]d` | Previous / next diagnostic |
| `Ctrl-\` | Toggle floating terminal |

## Structure
