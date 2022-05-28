#!/bin/bash
cd files
echo ""
echo -e "\033[1;103m\033[1;30m  File list  \033[0m\033[0m"
echo ""
ls
echo ""
echo -e "\033[1;103m\033[1;30m  File to delete?  \033[0m\033[0m"
echo ""
read file
echo ""
echo -e "\033[1;101m\033[1;30m                       \033[0m\033[0m"
echo -e "\033[1;101m\033[1;30m          !            \033[0m\033[0m"
echo -e "\033[1;101m\033[1;30m                       \033[0m\033[0m"
echo ""
read -r -p "Are you sure? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    rm $file
else
    echo "delete cancelled"
fi
echo ""
echo -e "\033[1;102m\033[1;30m  Done  \033[0m\033[0m"
echo ""

