# TODO

* Audio Stuff
* Multiscreen
* Starship
* Consider switching to polybar

# Setting up from scratch

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

* Adding the following (may need both, may only need one, not sure):

/etc/default/keyboard
```
"caps:swapescape"
```

/etc/X11/xorg.conf.d/00-keyboard.conf
```
Option "KkbOptions" "caps:swapescape"
```

* Make firefox font slightly bigger.

Go to about:config. Change `layout.css.devPixelsPerPx` to something like 1.1

* Switch firefox theme to Solarized Dark
