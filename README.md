# Neovim “LeetCode++” Master Config

*Fedora · Java · LeetCode · LSP · DAP*

A fully‑featured, batteries‑included Neovim distribution tailored for Java development, competitive coding on LeetCode, and general purpose programming. It combines the power of **Lazy.nvim** for plugin management, **LSP** for intelligent code assistance, **DAP** for debugging, and opinionated defaults so you can focus on solving problems—not configuring your editor.

---

## ✨ Features

| Category                 | Highlights                                                             |
| ------------------------ | ---------------------------------------------------------------------- |
| **Plugin Manager**       | Lazy.nvim bootstraps itself automatically on first launch              |
| **Language Server**      | `jdtls` for Java, `lua_ls`, `tsserver`, more via Mason.nvim            |
| **Debugging**            | Built‑in DAP UI + Java adapter (attach to port **5005**)               |
| **LeetCode Integration** | `leetcode.nvim` with wrapped & line‑broken view for easy reading       |
| **Formatting**           | Auto‑formats Java files on save via LSP (`vim.lsp.buf.format()`)       |
| **Which‑key**            | Discover key‑bindings on the fly                                       |
| **Aesthetics**           | Treesitter syntax, catppuccin theme, smooth scrolling                  |
| **Quality of Life**      | Sensible defaults, telescope‑powered fuzzy search, git signs, and more |

---

## 🛠️ Prerequisites

| Tool                | Tested Version                             |
| ------------------- | ------------------------------------------ |
| **Neovim**          | ≥ 0.10.0                                   |
| **Fedora Packages** | `ripgrep`, `fd-find`, `fzf`, `gcc`, `make` |
| **JDK**             | OpenJDK 17 or later                        |
| **Node.js & npm**   | ≥ 18.x (for tsserver & some plugins)       |
| **Git**             | ≥ 2.40                                     |

> **Tip:** On Fedora you can grab all extras in one go:
>
> ```bash
> sudo dnf install ripgrep fd-find fzf gcc make java-17-openjdk nodejs npm
> ```

---

## 🚀 Installation

```bash
# 1. Back up any existing config
mv ~/.config/nvim ~/.config/nvim.backup.$(date +%s) || true

# 2. Clone the repo
git clone --depth 1 https://github.com/<your-username>/leetcode-plus-nvim ~/.config/nvim

# 3. Launch Neovim – Lazy.nvim will sync plugins automatically
nvim
```

First launch may take a couple of minutes while plugins are downloaded and compiled.

---

## ⚡️ Usage Cheatsheet

### General

| Key          | Mode | Action                    |
| ------------ | ---- | ------------------------- |
| `<leader>pv` | *n*  | Open plugin‑viewer (Lazy) |
| `<leader>ff` | *n*  | Telescope file finder     |
| `<leader>fg` | *n*  | Telescope live grep       |

### Debugging (Java)

| Key          | Mode | Action                       |
| ------------ | ---- | ---------------------------- |
| `<leader>db` | *n*  | Toggle breakpoint            |
| `<leader>dc` | *n*  | Continue (attach if not yet) |

Run your application with:

```bash
java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 -jar your-app.jar
```

Then hit `<leader>dc` in Neovim to attach.

### LeetCode Workflow

1. `:LeetCodeList` – Browse problems.
2. Press `o` on a problem to open.
3. Code, then `:LeetCodeSubmit` / `:LeetCodeTest`.

Soft‑wrap and line‑break options are enabled automatically for the `leetcode` filetype via an autocmd.

---

## 🔧 Customisation

* **Plugins** – Edit `plugins.lua` or use `:Lazy extras`.
* **Theme** – Switch in `lua/user/options.lua`.
* **Keymaps** – All custom mappings live in `lua/user/keymaps.lua`.

---

## 🩹 Troubleshooting

| Symptom                         | Fix                                                 |
| ------------------------------- | --------------------------------------------------- |
| *LSP not starting*              | Check `:Mason` – server may not be installed.       |
| *DAP won’t attach*              | Ensure your JVM is listening on **localhost:5005**. |
| *Unknown function after update* | Run `:Lazy sync` and restart Neovim.                |

---

## 🤝 Contributing

PRs are welcome! Feel free to open issues or submit patches for:

* New language server presets
* Improved docs or screenshots
* Bug fixes & performance tweaks

Make sure to run `stylua` on any Lua code before submitting.

---

## 📜 License

Distributed under the **MIT License**. See `LICENSE` for details.

---

## 📷 Screenshots (Optional)

Add some eye‑candy here – e.g. a coding session with DAP UI and LeetCode split view.

---

### Acknowledgements

Inspired by the Neovim community, kickstart.nvim, LunarVim, and the authors of every plugin included in this configuration.

---

> *“Write code. Hit bugs. Learn. Repeat.”*
