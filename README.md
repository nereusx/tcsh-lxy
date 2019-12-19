# tcsh-lxy
tcsh tutorials and related stuff

* **Why insist to tcsh instead of other shells?**
  Well the shell is the program that allow user to communicate with the OS.
  In this job tcsh is the most excellent.

* **But it has bugs...**
  I prefer a better shell, not a bugless Thompson's shit. (`if [[a -eq b]]; then` ... really?)...
  It is fun to write C-Shell scripts, are simple and elegant.

## My stuff

* Learn x in y minutes files
I wrote this and it is included in [learnxinyminutes](https://learnxinyminutes.com/) project: 
[**tcsh.md**](https://github.com/nereusx/tcsh-lxy/blob/master/tcsh.md)

* BIG learn x in y minutes files
Also I wrote this more complete version but it didnt accepted.
Well who needs so many details: 
[**tcsh-big.md**](https://github.com/nereusx/tcsh-lxy/blob/master/tcsh-big.md)

* TCSH tips & tricks
[**tcsh-tricks.md**](https://github.com/nereusx/tcsh-lxy/blob/master/tcsh-tricks.md)

* Online help, cheat sheet for 132x35 terminals:
[**csh-help**](https://github.com/nereusx/tcsh-lxy/blob/master/csh-help)

* One-line foreach replacement. foreach-end does not work in tcsh command line, only in scripts,
so i made this utility to replace it: 
[**dof**](https://github.com/nereusx/unix-utils/tree/master/dof),
[**dof-manual**](https://github.com/nereusx/unix-utils/blob/master/dof/dof.pdf)

* My startup script: [**.tcshrc**](https://github.com/nereusx/dotfiles/blob/master/.tcshrc)

## Secrets to write safe scripts

1. Use spaces everywhere to separate things

1. In arithmetic expressions use parenthesis and spaces

1. Use `set backslash_quote` before messup with quotes

1. Inline IF with redirection does not works, it has more bugs, avoid to use it.

1. `{}` blocks does not supports pipes or redirection

1. Do not use 'here doc' inside blocks. Just store them in a variable before use them.

1. Watch out the exclamation mark, it represents the history commands and had priority even of single quotes

1. Use new-line at the end of a single-quoted text in aliases with ENTER (for example after endif); or in file if its needed

1. If your script is big enough, respect your users and write it in a real language (C, Pascal, Fortran) or at least in a script
lanuage (awk, basic, python, perl). Shells are not made to program but to communicate with OS.

## Complains

1. foreach-end in the command line

2. `set x = ( *xyz )` had to return an empty variable not "no match" error!

# TCSH Resources

### must read
* [An Introduction to the C shell](https://docs.freebsd.org/44doc/usd/04.csh/paper.pdf) by William Joy
* [C-shell Cookbook](http://starlink.eao.hawaii.edu/devdocs/sc4.pdf) by Malcolm J. Currie

### other
* [The tcsh site](http://tcsh.org)
* [The tcsh source code](https://github.com/tcsh-org/tcsh)
* [Csh - The C Shell](https://www.grymoire.com/Unix/Csh.html) by Bruce Barnett
* [The C Shell tutorial](http://web.eng.hawaii.edu/Tutor/csh.html) by Ben Yoshino, University of Hawaii at Manoa
* [The tcshrc project](https://sourceforge.net/projects/tcshrc/)
* [The complete.tcsh file](https://github.com/tcsh-org/tcsh/blob/master/complete.tcsh)

* [CSH cheet sheet](http://www.geol.lsu.edu/jlorenzo/ReflectSeismol/labs/unix-cheatsheet.pdf)
* [The C-Shell](https://www2.cs.duke.edu/csl/docs/csh.html)

