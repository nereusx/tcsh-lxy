# tcsh tips & tricks

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
(https://github.com/nereusx/tcsh-lxy/blob/master/pics/tt-pushd.png)

Typing `cd =N` we can jump to Nth directory of `dirstack`.

## bindkey to any alias

```
alias mycmd 'echo "Hello there"'

# run mycmd when you press Ctrl+O
bindkey -c '^O' mycmd
```
