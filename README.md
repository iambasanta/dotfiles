## Repository

Change directory to `~/Downloads`

    cd ~/Downloads

Clone the `dotfiles` repository

    git clone https://github.com/iambasanta/dotfiles.git

---

## Font
Fira Code is an extension of the Fira Mono font containing a set of ligatures for common programming multi-character combinations.

[FiraCode](https://github.com/tonsky/FiraCode)

    sudo apt install fonts-firacode

---

## Window Manager
### [awesomeWM](https://github.com/awesomeWM/awesome)
AwesomeWM is a dynamic window manager .

#### Prerequisites:
- [rofi](https://github.com/davatorium/rofi)
- [feh](https://github.com/derf/feh)
- [compton](https://github.com/chjj/compton)

Install awesomeWM

    sudo apt install awesome

Copy `rc.lua` from dotfiles to `~/.config/awesome`

    cp -r ~/Downloads/dotfiles/awesome ~/.config

---

## Shell
### [Bash](https://github.com/bminor/bash)
Bash is the GNU Project's shell—the Bourne Again SHell. This is an sh-compatible shell that incorporates useful features from the Korn shell (ksh) and the C shell (csh).It offers functional improvements over sh for both programming and interactive use. In addition, most sh scripts can be run by Bash without modification.

Copy `.bashrc` from dotfiles to `~/.bashrc`

    cp ~/Downloads/dotfiles/bash/.bashrc ~/.bashrc

---

## [Neovim](https://github.com/neovim/neovim)
Hyperextensible Vim-based text editor.

#### Plugins :
- [Packer](https://github.com/wbthomason/packer.nvim)
- [gruvbox](https://github.com/morhetz/gruvbox)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [vim-vsnip](https://github.com/hrsh7th/vim-vsnip)

Install neovim
#### [Build from source](https://github.com/neovim/neovim/wiki/Building-Neovim)

    sudo apt install neovim


Install plugin manager [Packer](https://github.com/wbthomason/packer.nvim)

    git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim

Make `nvim` directory inside `~/.config` folder

    mkdir ~/.config/nvim

Copy `nvim` directory from dotfiles to `~/.config`

    cp -r ~/Downloads/dotfiles/nvim ~/.config

Open `nvim ` and run `:PackerInstall` command to install plugins

    nvim

---

## Terminal Multiplexer ([Tmux](https://github.com/tmux/tmux))
Tmux is a terminal multiplexer. It allows multiple terminal sessions to be accessed simultaneously in a single window.

Install tmux

    sudo apt install tmux

Copy `.tmux.conf` from dotfiles to `~/.tmux.conf`

    cp ~/Downloads/dotfiles/tmux/.tmux.conf ~/.tmux.conf

---

## [Vim](https://github.com/vim/vim)
Vim is a highly configurable text editor built to make creating and changing any kind of text very efficient.

#### Plugins :
- [vim-plug](https://github.com/junegunn/vim-plug)
- [coc.nvim](https://github.com/neoclide/coc.nvim)
- [fzf](https://github.com/junegunn/fzf)
- [gruvbox](https://github.com/morhetz/gruvbox)
- [undotree](https://github.com/mbbill/undotree)
- [vim-closetag](https://github.com/alvan/vim-closetag)
- [vim-surround](https://github.com/tpope/vim-surround)
- [vim-css-color](https://github.com/ap/vim-css-color)
- [vim-signify](https://github.com/mhinz/vim-signify)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [goyo.vim](https://github.com/junegunn/goyo.vim)
- [vim-commentary](https://github.com/tpope/vim-commentary)
- [indentLine](https://github.com/Yggdroot/indentLine)

### Install Vim

    sudo apt install vim

Make a `.vim` directory and `undodir` inside it

    mkdir ~/.vim/undodir -p

Install plugin manager [vim-plug](https://github.com/junegunn/vim-plug)

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Make a `~/.vimrc` file

    touch ~/.vimrc

Copy `.vimrc` from dotfiles to `~/.vimrc`

    cp ~/Downloads/dotfiles/vim/.vimrc ~/.vimrc

Open `vim` and run `:PlugInstall` command to install plugins

    vim

Settings for coc-settings.json

    {
        "coc.preferences.formatOnSaveFiletypes": ["css", "markdown", "javascript", "sql", "html", "yaml",  "json", "vue"]
    }
