#!/bin/bash

echo "What's your name?"
read name

echo "What's your age?"
read age

echo "Hello, $name, you are $age years old."

sleep 1

echo "Calculating."
echo "............"
sleep 1
echo "***........."
sleep 1
echo "******......"
sleep 1
echo "*********..."
sleep 1
echo "************"

millionaire_age=$(( $age + ($RANDOM % 15) ))
echo "You'll become a millionaire at age $millionaire_age."

echo "$PWD; $SHELL; $USER; $HOSTNAME; $RANDOM"
echo "$twitter"

