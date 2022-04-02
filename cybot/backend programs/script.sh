#!/bin/bash
#category=access,create,moved_to,moved_from,open,modify,delete

#++$Category=access,create,moved_to,moved_from,open,modify,delete 

user=$(uname -a)

inter=$(hostname -I)

directory=$(pwd)

#$/Variables already declared
iwatch -e  access,create,moved_to,moved_from,open,modify,delete home/blackops/Privatedata -c $(echo -e "Host: $user  ,IP Address: $inter ,Affected Directory : $directory" | mail -s "Unauthorized Access" example2@gmail.com)

#email client is mandatory
#Can use also use Regex(*\?) to increase detection rate // schedule jobs
