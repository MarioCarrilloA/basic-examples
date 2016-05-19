# Single and Double square brackets in Bash

There are several differences [<a href="#1">1</a>]. In my opinion, a few of
the most important are:

1. `[` is a builtin in Bash and many other modern shells. The builtin `[` is
   similar to test with the additional requirement of a closing `]`. The
   builtins `[` and test imitate the functionality `/bin/[` and `/bin/test`
   along with their limitations so that scripts would be backwards
   compatible. The original executables still exist mostly
   for POSIX compliance and
   backwards compatibility. Running the command `type [` in Bash indicates that
   `[` is interpreted as a builtin by default. (Note: `which [` only looks for
   executables on the PATH and is equivalent to `type -P [`)

2. `[[` is not as compatible, it generally won't work with whatever `/bin/sh`
   points to. So `[[` is the more modern bash / zsh / korn option.

3. Because `[[` is built in to the shell and does not have legacy requirements,
   you don't need to worry about word splitting based on the IFS variable to
   mess up on variables that evaluate to a string with spaces. Therefore, you
   don't really need to put the variable in double quotes.

For the most part, the rest is just some nicer syntax. To see more differences,
I recommend this link to a FAQ answer:
[What is the difference between test,
&#91; and &#91;&#91; ?](http://mywiki.wooledge.org/BashFAQ/031).
In fact, if you are serious about bash scripting, I recommend
reading the entire [wiki](http://mywiki.wooledge.org/), including the FAQ,
[Pitfalls](http://mywiki.wooledge.org/BashPitfalls), and Guide. [The test 
section from the guide section](http://mywiki.wooledge.org/BashGuide/TestsAndConditionals#Conditional_Blocks_.28if.2C_test_and_.5B.5B.29) explains these
differences as well, and why 
the author(s) think `[[` is a better choice if you don't need to worry about 
being as portable. The main reasons are:

1. You don't have to worry about quoting the left hand side of the test so
   that it actually gets read as a variable.

2. You don't have to escape less than and greater than `< >` with backslashes
   in order for them not to get evaluated as input redirection, which can
   really mess some stuff up by over writing files. This again goes
   back to `[[` being a builtin. If `[` (test) is an external program the
   shell would have to make an exception in the way it evaluates `<` and `>` 
   only if `/bin/test` is being called, which wouldn't really make sense.

## Builtins & Keywords

In Short:

> [ ] are bash Builtins
>
> [[ ]] are bash Keywords

**Keywords**: Keywords are quite like builtins, but the main difference is
that special parsing rules apply to them. For example, `[` is a bash
builtin, while `[[` is a bash keyword. They are both used for testing
stuff, but since `[[` is a keyword rather than a builtin, it benefits
from a few special parsing rules which make it a lot easier:

``` bash
$ [ a < b ]
-bash: b: No such file or directory
$ [[ a < b ]]
```
The first example returns an error because bash tries to redirect the file
b to the command [ a ]. The second example actually does what you expect
it to. The character < no longer has its special meaning of File
Redirection operator.

Source: http://mywiki.wooledge.org/BashGuide/CommandsAndArguments

# References

<a name="1">1</a>. http://serverfault.com/questions/52034/what-is-the-difference-between-double-and-single-square-brackets-in-bash

### Others resources

* http://stackoverflow.com/questions/13542832/what-is-the-difference-between-single-and-double-square-brackets-in-bash
* http://stackoverflow.com/questions/14496428/meaning-of-double-square-brackets-in-bash

