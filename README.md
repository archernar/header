# header

```
#!/usr/bin/bash
Tmp=/tmp/$$
Tmp1=/tmp/$$_$$
trap 'exit 0' INT HUP QUIT TERM ALRM USR1
trap 'rm -f "$Tmp" "$Tmp1"' EXIT
rm -f "$Tmp"  >/dev/null 2>&1
rm -f "$Tmp1"  >/dev/null 2>&1
#================================================================
# HEADER
#================================================================
#% SYNOPSIS
#+    ${SCRIPT_NAME} [-hv] [-o[file]] args ...
#%
#% DESCRIPTION
#%    This is a script template
#%    to start any good shell script.
#%
#% OPTIONS
#%    -o [file], --output=[file]    Set log file (default=/dev/null)
#%                                  use DEFAULT keyword to autoname file
#%                                  The default value is /dev/null.
#%    -t, --timelog                 Add timestamp to log ("+%y/%m/%d@%H:%M:%S")
#%    -x, --ignorelock              Ignore if lock file exists
#%    -h, --help                    Print this help
#%    -v, --version                 Print script information
#%
#% EXAMPLES
#%    ${SCRIPT_NAME} -o DEFAULT arg1 arg2
#%
#================================================================
#- IMPLEMENTATION
#-    version         ${SCRIPT_NAME} 0.0.1
#-    author          MJE
#-    copyright       Copyright (c) All Rights Reserved
#-    license         All Rights Reserved
#-    script_id       0.0.1
#-
#================================================================
#  HISTORY
#     2024/11/15 : MJE : Script creation
# 
#================================================================
#  DEBUG OPTION
#    set -n  # Uncomment to check your syntax, without execution.
#    set -x  # Uncomment to debug this shell script
#
#================================================================
# END_OF_HEADER
#================================================================

#== needed variables ==#
SCRIPT_HEADSIZE=$(head -200 ${0} |grep -n "^# END_OF_HEADER" | cut -f1 -d:)
SCRIPT_NAME="$(basename ${0})"

#== usage functions ==#
usage() { printf "Usage: "; head -${SCRIPT_HEADSIZE:-99} ${0} | grep -e "^#+" | sed -e "s/^#+[ ]*//g" -e "s/\${SCRIPT_NAME}/${SCRIPT_NAME}/g" ; }
usagefull() { head -${SCRIPT_HEADSIZE:-99} ${0} | grep -e "^#[%+-]" | sed -e "s/^#[%+-]//g" -e "s/\${SCRIPT_NAME}/${SCRIPT_NAME}/g" ; }
scriptinfo() { head -${SCRIPT_HEADSIZE:-99} ${0} | grep -e "^#-" | sed -e "s/^#-//g" -e "s/\${SCRIPT_NAME}/${SCRIPT_NAME}/g"; }

cat xxx | grep "yyy"  | gawk '
BEGIN {
    NOTHING=0
}
//{
    
}
END {
    NOTHING=0
}'

# Check if a file exists
if [ -f "/path/to/your/file" ]; then
  echo "File exists."
else
  echo "File does not exist."
fi

# Check if a directory exists
if [ -d "/path/to/your/directory" ]; then
  echo "Directory exists."
else
  echo "Directory does not exist."
fi

# Check if input file is provided
if [ -z "$1" ]; then
    echo "Usage: `basename "$0"` <input_file>"
    exit 1
if

# filename munging
input_file="$1"                                                                                         
output_file="${input_file%.*}.html"
cat "$input_file"  | sed '/^$/d' | sort | uniq > $Tmp; cp $Tmp "$input_file"
line_count=$(wc -l < "$input_file")
half_lines=$((line_count / 3))

# ifs
if [ "$num" -eq 2 ]; then


isnfs () {                                                                                                                       
    LOCAL=`stat -f -c %T "$1"`                                                                                                   
    if [ "$LOCAL" == "nfs" ]; then                                                                                               
         RETVAL="YES"                                                                                                             
    else                                                                                                                         
         RETVAL="NO"                                                                                                              
    fi                                                                                                                           
}

consolebar () {
    echo "********************************************************************************************"
}
consolemsg () {
#   consolebar
    echo "** $1"
#   consolebar
    A=$A
}
optconsolemsg () {
#    echo "** $1"
    A=$A
}


while getopts "ha:" arg
do
    case $arg in
        h) usagefull;
           exit 0;
           ;;
        a) A="$OPTARG"
           exit 0
           ;;
    esac
done
shift $(($OPTIND - 1))
















# +===================================================================================================+
# +===================================================================================================+

# -a file file exists
#  -d file file exists and is a directory
#  -f file file exists and is an ordinary file
#  -r file file exists and is readable
#  -s file file exists and has a size greater than 0
#  -w file file exits and is writable
#  -x file file exists and is executable
#  -L file file exists and is a symbolic link
#  -O file file exists and owned by user file1 i
#  -nt file2 file1 exists and is newer than file2 file1 
#  -ot file2 file1 exists and is older then file
# 
# if [ ! -d "$DIRECTORY" ]; then
#   echo "The directory [$DIRECTORY] does not exist."
#   exit 0
# fi
# 
# 0  - Normal Style (reset)
# 1  - Bold
# 2  - Dim
# 3  - Italic
# 4  - Underlined
# 5  - Blinking
# 7  - Reverse
# 8  - Invisible
# 30 - BLACK
# 31 - RED
# 32 - GREEN
# 33 - YELLOW
# 34 - BLUE
# 35 - PURPLE
# 36 - CYAN
# 37 - WHITE
# bold=$(printf '\033[%sm' "4")
# reset=$(printf '\033[%sm' "0")
# 
# cat <<USAGE_TEXT
# 
# USAGE_TEXT
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 








```
# update

```
./update.sh
```
# getheader

```
#!/usr/bin/bash
Tmp=/tmp/$$
Tmp1=/tmp/$$_$$
trap 'exit 0' INT HUP QUIT TERM ALRM USR1
trap 'rm -f "$Tmp" "$Tmp1"' EXIT
rm -f "$Tmp"  >/dev/null 2>&1
rm -f "$Tmp1"  >/dev/null 2>&1


SCRIPTNAME=""

while getopts "s:" arg
do
    case $arg in
        s) SCRIPTNAME="$OPTARG"
           echo $SCRIPTNAME
           if [ ! -f "$SCRIPTNAME" ]; then
               echo "The file [$SCRIPTNAME] does not exist."
               exit 0
           fi
           exit 0
           ;;
    esac
done
shift $(($OPTIND - 1))



wget -O newbashscript https://raw.githubusercontent.com/archernar/header/refs/heads/master/header
wget -O justhelp https://raw.githubusercontent.com/archernar/header/refs/heads/master/justhelp
wget -O bash.functions https://raw.githubusercontent.com/archernar/header/refs/heads/master/bash.functions
ls -l newbashscript
ls -l justhelp
ls -l bash.functions
echo ""
echo ""
echo "https://github.com/archernar/header"
echo ""
echo ""

```
