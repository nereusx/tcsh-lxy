# tcsh tips & tricks

## remember previous directories automagically

The tcsh has the ability to remember any directory that you visited.
You just have to configure the `dirstack`.

```
# just a few nice settings for the dirstack
set pushdsilent
set pushdtohome

# use pushd instead of cd
alias cd 'pushd'
```

## bindkey to any alias

```
alias mycmd 'echo "Hello there"'

# run mycmd when you press Ctrl+O
bindkey -c '^O' mycmd
```
