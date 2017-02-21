# dotfiles
My dotfiles.

### Install

Clone this repo in your `~/` user folder, recursively including submodules (VIM plugins):

```sh
git clone --recursive https://github.com/singleportrait/dotfiles
```

Create symlinks in your `~/` user folder, something along the lines of this:

```sh
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim/ ~/
```

Add this to your `~/.profile` file, so that your bash file's commands get read in terminal:

```sh
source ~/.bashrc
```

Install [Homebrew](https://brew.sh).

Then install some programs:

```sh
brew install macvim
brew install bash-completion
brew install the_silver_searcher
```


### This comes with

- vim-pathogen
- vim-fugitive
- ctrlp
- Some other vim plugins
- Some aliases


### Add new plugins with

```sh
cd ~/.vim
git submodule init
git submodule add git://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
git commit -m 'Added vim-fugitive'
git push
```
