# dotfiles
My dotfiles.

### Install

Clone this repo in your `~/` user folder

Create symlinks in your `~/` user folder, something along the lines of this:

```sh
ln -s ~/Dotfiles/.bashrc ~/.bashrc
ln -s ~/Dotfiles/.vimrc ~/.vimrc
ln -s ~/Dotfiles/.vim/ ~/
```

Add this to your `~/.profile` file, so that your bash file's commands get read in terminal:

```sh
source ~/.bashrc
```


### This comes with

- Pathogen
- Some aliases

