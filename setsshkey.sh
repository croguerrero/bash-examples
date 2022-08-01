#!/bin/bash 
#APP Servers
users=("tony" "steve" "banner")
passwd=("Ir0nM@n" "Am3ric@" "BigGr33n")
server=("stapp01" "stapp02" "stapp03")

function copyssh (){
   for i in ${!server[@]}
      do 
      echo "Copy SSH key to ${server[$i]}"
      ssh-copy-id 
   done
   }


   
