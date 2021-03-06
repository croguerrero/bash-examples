# Notes SHELL SCRITPS

# Work with special characters 
  $PATH
  $SHELL

# Implementing and/or List 

    && ans list --- A string of commands where the next command is only executed if
    the previous command exited with astatus of zero

    || ans list --- A string of commands where the next command is only executed if
    the previous command exited with a non-zero status

# Exit Statuses 
    Zero Exit Status:
        Implies the script or program ran to
        completion and everything is fine.
    Non-Zero Exit Status:
        Results can vary based on the script
        or program that generated the exit status.
        
 the $? variable is used to determine the exit status of the last command executed.

 # Redirecting I/O
 Redirecting stdout and stderr. 
--------------------------------------------------------------------------------
    > file_name
    >> file_name  # append data to file
    < file_name
    2> file_name
    2>> file_name
    1> file_name
    1>> file_name
 --------------------------------------------------------------------------------
    echo "abc 123">file
    exec 5<> file
    read -n3 var <&5
    echo $var
    exec 5>&-

# Variables 
Variables are used to define a value that can be used in subsequent commands.
--------------------------------------------------------------------------------
    VARIABLE_NAME = VARIABLE_VALUE
    echo $VARIABLE_NAME
---------------------------------
# BASH FUNCTIONS 
Its a way to group code in a logical way.
--------------------------------------------------------------------------------
    function name {
        code
     exit status
    }
    function hello {
        echo "Hello World"
    }
    hello
    quit 
--------------------------------------------------------------------------------
# ARRAYS 
Multiple values are stored in an array.
--------------------------------------------------------------------------------
    Number=(1 2 3 4 5)
    Number+= 9 #append 9 to the array
    echo ${Number[0]}
    echo ${Number[@]}
    echo ${#Number[*]} #length of array
--------------------------------------------------------------------------------

# Sustitution 
    rpm -qf /usr/bin/bash
    rpm -qf `wich yum`
    rpm -qf $(which yum)
    TIME = $(date +%H:%M:%S)
# Process Sustitution
    bash <(curl -s https://raw.githubusercontent.com/user/repo/master/script.sh)

# Loops 
 for i in $(ls); do
    echo $i
 done

 for i in {1..10}; do
    touch  file$i
 done

 while [ $i -le 10 ]; do
    echo $i
    i=$((i+1))
 done

 until [ $i -gt 10 ]; do
    echo $i
    i=$((i+1))
 done

 # SIGNALS
 Programs in Linux are managed pratilly by signals from the kernel.

 SIGINT: Interrupt
 SIGKILL: Kill
 SIGTERM: Terminate
 SIGUSR1: User defined 1

# Using Exit Status, Test and Built 
    if ()
    then 
        command
    else 
        command
    fi 
    
 # Heredocs 
 A heredoc is a special type of redirection that allows you to pass multiple lines of input to a command.

 cat << DELIMITER
    This is a heredoc.
    It is useful for passing multiple lines of input to a command.
    DELIMITER

# Herestring 
 Is a pared-down version of heredoc.

 command <<< "$WORD"
 
 # Bash Builtins for Troubleshoot Problems 
 set -x
 set -u
 set -e
 # Aditional Builtins
  - break: Breaks out of a loop.
    - continue: Continues to the next iteration of a loop.
    - readonly: Makes a variable readonly cannot be modified.
If we put -x intialy on /bin/bash we can view how process code

# What is REGEX 
Regular expressions are a way to match or search patterns.
# Regex Metacharacter
 grep -E "^[0-9]+$"
 grep -E '\<is\>|am' # <> is used for matching the word is or am  
 grep -oE '\<is\>|am' super.txt 
 grep -E '(B|C)AT' super.txt

# Best Practices 
