#!/bin/bash

folders=$(find $1* 2>/dev/null -type d | wc -l)
top_folders=$(du -Sh $1 2>/dev/null | sort -rh | head -n 5 | cat -n | awk '{printf "%-d %-s, %-s\n", $1,$3,$2}')
files=$(find $1 2>/dev/null -type f | wc -l)
configuration=$(find $1 2>/dev/null -type f \( -name "*.conf" \) | wc -l)
text=$(find $1 2>/dev/null -type f \( -name "*.txt" \) | wc -l)
executable=$(find $1 2>/dev/null -type f -executable | wc -l)
log=$(find $1 2>/dev/null -type f \( -name "*.log" \) | wc -l)
archive=$(find $1 2>/dev/null -type f \( -name "*.zip" -o -name "*.7z" -o -name "*.rar" -o -name "*.tar" \) | wc -l)
symbolic=$(find $1 2>/dev/null -type l | wc -l)

top_files=$(find $1 2>/dev/null -type f -exec du -Sh {} + |
 sort -rh | head -n 10 | cat -n |
  awk '{command = "basename \"" $3 "\""; command | getline output; close(command);
   split(output, parts, "."); 
   extension = (length(parts) > 1) ? parts[length(parts)] : ""; 
   printf "%-d %-s, %-s, %-s\n", $1, $3, $2, extension}')

top_executable=$(find $1 2>/dev/null -type f -executable -exec du -Sh {} + |
 sort -rh | head -n 10 | cat -n |
 awk '{command = "md5sum " $3; command | getline output; close(command);
  split(output, parts, " "); 
  printf ("%-d %-s, %-s, %-s\n", $1, $3, $2, parts[1])}')