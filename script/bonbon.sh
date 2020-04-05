#!/bin/bash

# this is my company's (Mars Sportif) project folder 
# you must change it with yours
# Then change alias calls on lines #19, #23 and #28
alias mars="cd ~/src/gitlab/marsathletic/"

colorful_pwd()
{
  temp=""
  for i in {0..$(( ${#${PWD##*/}}-1))}
  do
    temp="$temp\e[3$(( $RANDOM * 6 / 32767 + 1 ))m${${PWD##*/}:$i:1}\033[0m"
  done
  echo $temp
}

bonbon() {
  mars;
  command="";
  for i in $(ls -d */);
  do
    command+="mars && cd ${i%%/} && colorful_pwd && git pull && ";
  done
  # this is a gift for awareness, Love always wins!!
  command+="echo \"\n\t--__(-_-)__--\n\n\t  LOVEWINS\n\n\t--__(-_-)__--\"";
  eval "$command"
  mars;
}