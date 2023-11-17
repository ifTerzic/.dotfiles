# New 'advanced' way of managing my dotfiles.

### What did i learn?
Managing dotfiles can be hard. Using git submodules seems good but has 
some flaws. 1) With every new config you want to include in your parent dotfiles
repository you have to include a github action in order to pull the latest 
changes in to the parent repository. 2) Creating a new repository for every new
config you want to add sucks!

### The solution
[GNU stow](https://www.gnu.org/software/stow/)

### Prerequisites
```console
git
stow
```

### Requirements
```console
zsh>=5.8.1
oh-my-zsh
znap
nvim>=0.9.0
i3-wm
polybar
rofi
tmux
```

### Installation
1) run `stow */ --simulate` to test if any conflicts emerge.
2) run `stow */` to create symlinks for every config in the repo.

