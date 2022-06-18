# nvim
Neovim configuration.

## Setup

1. Install packer.

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

2. Clone this repo to `~/.config/`.

```
git clone --depth 1 https://https://github.com/xq-meng/nvim.git ~/.config/
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

clangd is required for cpp complete.

```
# debian / ubuntu
apt-get install clangd

# mac os
brew install llvm
```

For other language, run `:InstallLspServer`.

4. Iconic font is required for better display.

Nerd font is recommanded. Please download font from [Nerd Font](https://www.nerdfonts.com/font-downloads) or [GitHub Page](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts) and apply it to your terminal.
