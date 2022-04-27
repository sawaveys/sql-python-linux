#!/bin/sh

file1="/home/ec2-user/scriptingActivities/m3_linux/activity12/files.txt"
file2="/home/ec2-user/scriptingActivities/m3_linux/activity12/file2.txt"

if cmp -s "$file1" "$file2"; then
    printf 'The file "%s" is the same as "%s"\n' "$file1" "$file2"
else
    printf 'The file "%s" is different from "%s"\n' "$file1" "$file2"
fi
