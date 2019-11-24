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
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim/ ~/
```

Add this to your `~/.profile` file, if you have one, so that your bash file's commands get read in terminal:

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


### These dotfiles come with:

- Some vim plugins:
  - vim-pathogen
  - vim-fugitive
  - ctrlp
  - Some other ones
- Some aliases


### Add new plugins with

```sh
cd ~/.vim
git submodule init
git submodule add git://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
git commit -m 'Added vim-fugitive'
git push
```

### Removing plugins

A little complicated, but I've done it following the instructions in [this Stack Overflow post](https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule):
- Delete the relevant section from the `.gitmodules` file.
- Stage the `.gitmodules` changes `git add .gitmodules`
- Delete the relevant section from `.git/config.`
- Run `git rm --cached path_to_submodule` (no trailing slash) (e.g. `git rm --cached .vim/bundle/vim-gh-line`).
- Run `rm -rf .git/modules/path_to_submodule/`
- Commit `git commit -m "Removed submodule <name>"`
- Delete the now untracked submodule files `rm -rf path_to_submodule/`

### Optional

If you want a global `.gitignore` file, you can create the symlink:

```sh
ln -s ~/dotfiles/.gitignore ~/.gitignore
```

And then:

```sh
git config --global core.excludesfile ~/.gitignore
```
