#!/bin/bash

splitting_dir=$1
targer_file="$splitting_dir/$2"
id_file="$3/$4"

page_count=$(pdfinfo $targer_file | awk '/^page:/ {print $2}')

pdfseparate -f 1 -l $page_count $targer_file $splitting_dir/%d.pdf

n=1

while read line && [ $n -le $splitting_dir ]
do
 if test -f "$splitting_dir/$n.pdf"; then
 awk "$splitting_dir/$n.pdf" "$splitting_dir/$line.pdf"
 fi
 n=$((n+1))
 done < $id_file