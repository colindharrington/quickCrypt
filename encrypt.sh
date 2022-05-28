#!/bin/bash
echo ""
cd files
echo -e "\033[1;103m\033[1;30m  Give file a name  \033[0m\033[0m"
echo ""
read name
echo "" > .tmp.tmp
nano .tmp.tmp
echo ""
openssl enc -aes-256-cbc -in .tmp.tmp -out $name_$(date +%m.%d.%Y-%H.%M)
rm .tmp.tmp
echo ""
echo -e "\033[1;102m\033[1;30m  Done.   \033[0m\033[0m"
echo ""
