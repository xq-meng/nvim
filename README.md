# nvim
Neovim configuration.

![my-neovim](https://images.cnblogs.com/cnblogs_com/xqmeng/2040131/o_220623030633_nvim-greeting.png)

## Setup

1. Clone this repo as neovim config.

Unix, Linux platform

```
git clone --depth 1 https://github.com/xq-meng/nvim.git ~/.config/nvim
```

Windows Powershell

```
git clone --depth 1 https://github.com/xq-meng/nvim.git "$env:LOCALAPPDATA\nvim"
```

2. Run Lazy in Neovim.

```
:Lazy
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

4. Iconic font is required for better display.

Nerd font is recommanded. Please download font from [Nerd Font](https://www.nerdfonts.com/font-downloads) or [GitHub Page](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts) and apply it to your terminal.

