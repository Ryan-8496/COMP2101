#!/bin/bash
#for (( i=1; [ -z "$var"]; i=$(($i + 1)) )); do
  #echo ""
#done
for ((c=0; c=100; c++)) do
  interfaces[$c]=`ip a | grep -w $c: | awk '{print $2}' | cut -d: -f1`
  echo ${interfaces[$c]}
  #[ ! -v ${interfaces[$i]} ] && c=1
done
echo "${interfaces[@]}"
