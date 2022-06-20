#!/bin/bash
cat << DELIMETER  #Expand variables in a string
This is a delimited section $USER $(date +"%x %r %Z")
DELIMETER

cat <<- DELIMETER #remove tabs from a string
    This is a delimited section
DELIMETER

cat > newfile << "DELIMETER"
    This is a delimited section $USER   $HOSTNAME
DELIMETER