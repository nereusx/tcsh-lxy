# tcsh-lxy
tcsh tutorials and related subjects

## Online help, cheat sheet
For 132x35 terminals

[csh-help](https://github.com/nereusx/tcsh-lxy/blob/master/csh-help)

## Learn x in y minutes files
I wrote this and it is included in [learnxinyminutes](https://learnxinyminutes.com/) project.

[tcsh.md](https://github.com/nereusx/tcsh-lxy/blob/master/tcsh.md)

## BIG learn x in y minutes files
Also I wrote this more complete version but it didnt accepted.
Well who needs so many details.

[tcsh-big.md](https://github.com/nereusx/tcsh-lxy/blob/master/tcsh-big.md)

## One-line foreach replacement
foreach-end does not work in tcsh command line, only in scripts,
so i made this utility to replace it.

[dof](https://github.com/nereusx/unix-utils/tree/master/dof)

[dof-manual](https://github.com/nereusx/unix-utils/blob/master/dof/dof.pdf)

## Secrets to write safe scripts

1. Use spaces everywhere to separate things

2. In arithmetic expressions use parenthesis and spaces

3. Use `set backslash_quote` before messup with quotes

4. Inline IF with redirection does not works

5. Do not use 'here doc' inside blocks

6. Watch out the exclamation mark, it represents the history commands and had priority even of single quotes

7. Use new-line at the end of a single-quoted text or the file if its needed

8. If your script is big enough, respect your users and write it in a real language (C, Pascal, Fortran) or at least in a script
lanuage (awk, basic, python, perl). Shells are not made to program but to communicate with OS.

## Complains

1. foreach-next for the command line

2. `set x = ( *xyz )` had to return an empty variable not "no match" error!

---

The tcsh original site
http://tcsh.org

My .tcshrc file
https://github.com/nereusx/dotfiles/blob/master/.tcshrc

My .login file
https://github.com/nereusx/dotfiles/blob/master/.login
