# tcsh tips & tricks


## Alt+p the most usefull key

This completes your command by searching backwards in history. Lets say, you want to retype the last copy that you did; type cp and press `Alt+p`.

## disable beep

```
set nobeep
unalias beepcmd
```

## display/insert escape key codes

Find where is binded the `quoted-insert`.
```
bindkey | grep quoted-insert
```
This internal function allows you to type a key and print out the escape key codes. You ll need it to setup the keys with bindkey correctly.

## bindkey to any alias

```
alias mycmd 'echo "Hello there"'

# run mycmd when you press Ctrl+O
bindkey -c '^O' mycmd
```

## remember previous directories automagically

The tcsh has the ability to remember any directory that you visited.
You just have to configure the `dirstack`.

```
# quietly add directories to dirstack
set pushdsilent
# without parameters go to home directory
set pushdtohome

# use pushd instead of cd, this makes the tricks
alias cd 'pushd'

# nice dirs, dirs displays the directories in the dirstack
alias dirs 'dirs -v'
```
![pushd example](https://github.com/nereusx/tcsh-lxy/blob/master/pics/tt-pushd.png "PUSHD Example")

Typing `cd =N` you can change to Nth directory of `dirstack`.


## using menu for dirstack

You can bind an alias to `PGDN` key; so when we press `PGDN` to get a menu with the previous directories. Using `arrows` and `ENTER` you can change to selected directory, or `ESC` to close the menu.

![pgdn example](https://github.com/nereusx/tcsh-lxy/blob/master/pics/tt-pgdn.png "dirs tui example")

First, select and install a menu utility. There are plenty, fzy, pick, iselect, etc. I prefer `fzy`.

Let's to store that somewhere in your `~/.tcshrc`
```
setenv PICKER fzy
```
Now, you need an alias to do the trick
```
alias go-back 'set dir=`dirs | $PICKER | cut -f1`; [ -n "$dir" ] && cd =$dir'
```
Ready, you can try it by typing `go-back`.

The last step is to bind it to `PGDN`
```
bindkey -c '^[[6~' go-back
```


And yes, I have already did it for history... You can find it in my [.tcshrc](https://github.com/nereusx/dotfiles/blob/master/.tcshrc).

