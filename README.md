# nvim
Neovim configuration.

## Setup

1. Install packer.

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

2. Run PackerSync.

```
:PackerSync
```

## Note

1. Neovim >= 0.7

2. Python3, pip3 is required.

3. clangd is required for cpp complete.

```
# debian / ubuntu
apt-get install clangd

# mac os
brew install llvm
```
