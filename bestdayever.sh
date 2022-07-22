#!/bin/bash

name=$1
attr=$2

user=$(whoami)
current_date=$(date)
current_dir=$(pwd)

# echo "What is your name?"
# read name

echo "Good morning $name!!"
sleep 1
echo "You're looking good today $name!!"
sleep 1
echo "You have the best $attr I've ever seen $name!!"

echo "You are currently logged in as $user"
echo "You are logged in the directory $current_dir"
echo "Today is $current_date"

