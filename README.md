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

Then, restart your Terminal, and you should be all set.

**Note:** There are a few lines in `.bash_profile` that were auto-added on my 2019 MBP in order to support MacPorts. This could potentially cause disruptions on future computers, and I'd imagine it can be commented out or removed on install.

**Additional Note:** There are a few lines in `.bashrc` specific to running the Aidin 2 & Next apps. On future computers, those lines could be deleted.

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

A slightly simpler version that seems to have the same effect, from this [instructional gist](https://gist.github.com/manasthakur/d4dc9a610884c60d944a4dd97f0b3560):

```sh
cd ~/.vim
git submodule deinit bundle/vim-jsx/
git rm -r bundle/vim-jsx
rm -r ~/dotfiles/.git/modules/.vim/bundle/vim-jsx
git commit -m "Removing deprecated vim-jsx"
git push
```

### Optional

If you want a global `.gitignore` file, you can create the symlink:

```sh
ln -s ~/dotfiles/.gitignore ~/.gitignore
```

And then:

```sh
git config --global core.excludesfile ~/.gitignore
```
