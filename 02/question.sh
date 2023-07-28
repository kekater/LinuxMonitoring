#!/bin/bash

while true; do
  read -r -p "Do you want to write data to a file? (Y/N): " answer
  case $answer in
    [Yy]* ) . output.sh; break;;
    * ) exit;;
  esac
done
