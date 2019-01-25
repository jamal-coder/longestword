#!/bin/bash

read -p "Enter a long string : " -a line

length=${#line[@]}

long=0
word=0
for ((count=0; count<length; count++)); do
	word=${#line[count]}
	if [[ $word -gt $long ]]; then
		long=$count
	fi
done

echo "The longest word is : ${line[long]}"
