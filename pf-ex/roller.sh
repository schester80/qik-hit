#!/bin/bash

while read -r line ; do
  echo "i am going to push $line"
done < <(chef show-policy | tail -n +4 | awk '{print $2}' | sed 's/://g' | grep "\-dev$")
