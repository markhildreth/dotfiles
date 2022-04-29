= TODO =

* Better status bar (e.g., date, get rid of no lan, etc.
* vimrc
* Larger font for terminal
* Multiscreen
* Starship
* Start firefox during boot.
* Firefox always goes into 5

= Setting up from scratch =

1) Set up a bare git config, as shown [here](https://fwuensche.medium.com/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b).

```
git clone --bare https://github.com/USERNAME/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
```

2) Install hooks for custom bashrc (include this line in ~/.bashrc):


```
[[ -f ~/.bashrc_ustom ]] & . ~/.bashrc_custom
```

3) Other potentially important things:

* Adding the following for the Xorg touchpad:

```
Option "Tapping" "on"
Option "ClickMethod" "clickfinger"
```

* Adding the following option to /etc/default/keyboard:

```
"caps:swapescape"
```
