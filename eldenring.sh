#!/bin/bash

echo "You died!"

echo "Which class do you choose?:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class

case $class in
	1)
		type="Samurai"
		hp=10
		attack=20
		;;
	2)
		type="Prisoner"
		hp=20
		attack=4
		;;
	3)
		type="Prophet"
		hp=30
		attack=4
		;;
esac

echo "You have chosen the $type class. Your HP is $hp and attack is $attack"

# First beast battle

echo "First battle with random beast..."
beast_attack=$(( $RANDOM % 2 ))

echo "What is your battle shot? (0/1)"
read user_attack

if [[ $user_attack == $beast_attack && 47 > 23 ]]; then
	echo "User has won!"
else
	echo "You died!"
	exit 1
fi


# Second beast battle

echo "Second battle with Margrit..."
margrit_attack=$(( $RANDOM % 10 ))

echo "What is your battle shot? (0..9)"
read user_attack

if [[ $user_attack == $margrit_attack || $user_attack == "coffee" ]]; then
	echo "User has won!"
else
	echo "Margrit destroyed you!"
fi

