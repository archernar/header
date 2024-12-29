No need for basename, and especially no need for a subshell running pwd (which adds an extra, and expensive, fork operation); the shell can do this internally using parameter expansion:

result=${PWD##*/}          # to assign to a variable
result=${result:-/}        # to correct for the case where PWD=/

printf '%s\n' "${PWD##*/}" # to print to stdout
                           # ...more robust than echo for unusual names
                           #    (consider a directory named -e or -n)

printf '%q\n' "${PWD##*/}" # to print to stdout, quoted for use as shell input
                           # ...useful to make hidden characters readable.
Note that if you're applying this technique in other circumstances (not PWD, but some other variable holding a directory name), you might need to trim any trailing slashes. The below uses bash's extglob support to work even with multiple trailing slashes:

dirname=/path/to/somewhere//
shopt -s extglob           # enable +(...) glob syntax
result=${dirname%%+(/)}    # trim however many trailing slashes exist
result=${result##*/}       # remove everything before the last / that still remains
result=${result:-/}        # correct for dirname=/ case
printf '%s\n' "$result"
