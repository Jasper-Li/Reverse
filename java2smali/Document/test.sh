#!/bin/bash
find ./ -name *.md  | while read i
do
        echo "$i";
        mv $i.md  $i.mkd
done
 
