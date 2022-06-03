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

# Demoggification   