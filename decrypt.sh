#!/bin/bash
cd files
echo ""
echo -e "\033[1;103m\033[1;30m  File list  \033[0m\033[0m"
echo ""
ls
echo ""
echo -e "\033[1;103m\033[1;30m  Enter file to decrypt  \033[0m\033[0m"
echo ""
read file   
echo ""
openssl enc -d -aes-256-cbc -pbkdf2 -iter 100000 -in $file -out .tmp.tmp

echo ""
echo -e "\033[1;102m\033[1;30m   vvvv    message    vvvv             \033[0m\033[0m"
echo ""
echo ""
cat .tmp.tmp
echo ""
echo ""
echo -e "\033[1;102m\033[1;30m   ^^^^    message    ^^^^             \033[0m\033[0m"
echo ""
rm .tmp.tmp
