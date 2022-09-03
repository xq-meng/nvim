# nvim
Neovim configuration.

![my-neovim](https://images.cnblogs.com/cnblogs_com/xqmeng/2040131/o_220623030633_nvim-greeting.png)

## Setup

1. Install packer.

Unix, Linux platform

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

For other platform, see [Packer Quickstart](https://github.com/wbthomason/packer.nvim/#quickstart)

2. Clone this repo as neovim config.

Unix, Linux platform

```
git clone --depth 1 https://github.com/xq-meng/nvim.git ~/.config/nvim
```

Windows Powershell

```
git clone --depth 1 https://github.com/xq-meng/nvim.git "$env:LOCALAPPDATA\nvim"
```

3. Run PackerSync in Neovim.

```
:PackerSync
```

## Note

1. Neovim version required.

Neovim >= 0.7, see [Neovim](https://neovim.io/) for latest release.

2. Python3, pip3 is required.

```
pip3 install neovim
```

3. Auto complete.

Clangd is required for c/cpp complete. For clangd's installation, see [Installing clangd](https://clangd.llvm.org/installation).

For other language, run ``:InstallLspServer`` while opening corresponding file.

4. Iconic font is required for better display.

Nerd font is recommanded. Please download font from [Nerd Font](https://www.nerdfonts.com/font-downloads) or [GitHub Page](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts) and apply it to your terminal.

## Shortcuts

| Shortcut            | Function                  |
| :------------------ | :------------------------ |
| `` ` ``             | leader key                |
| `` <leader>h ``     | window toggle to left     |
| `` <leader>l ``     | window toggle to right    |
| `` <leader>j ``     | window toggle to down     |
| `` <leader>k ``     | window toggle to up       |
| `` <C-g> ``         | Focus file tree explorer  |
| `` <leader><C-g> `` | close file tree explorer  |
| `` <C-h> ``         | buffer line cycle to prev |
| `` <C-l> ``         | buffer line cycle to next |
| `` ld ``            | list lsp definitions      |
| `` li ``            | list lsp implentations    |
| `` lr ``            | list lsp references       |
