#/bin/bash
read -p "Enter the First Input:" input1
read -p "Enter the Second Input:" input2
read -p "Enter the Third Input:" input3

a=$input1
b=$input2
c=$input3

result3=`awk 'BEGIN { printf("%2d\n", ('$c' + '$a') / '$b' )}'`
        echo "$result3"
