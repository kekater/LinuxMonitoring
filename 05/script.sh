#!/bin/bash

. input.sh

echo -e "Total number of folders (including all nested ones) = ${folders}"
echo -e "TOP 5 folders of maximum size arranged in descending order (path and size): \n${top_folders}"
 #указать расширение файла через ,
echo -e "Total number of files = ${files}"
echo -e "Configuration files (with the .conf extension) = ${configuration}"
echo -e "Text files = ${text}"  
echo -e "Executable files = ${executable}"
echo -e "Log files (with the extension .log) = ${log}"
echo -e "Archive files = ${archive}"
#проверить верная ли команда
echo -e "Symbolic links = ${symbolic}"
echo -e "TOP 10 files of maximum size arranged in descending order (path, size and type): \n${top_files}"
echo -e "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file) \n${top_executable}"