#/bin/bash
read -p "Enter the First Input:" input1
read -p "Enter the Second Input:" input2
read -p "Enter the Third Input:" input3

a=$input1
b=$input2
c=$input3

result1=$(( a + b * c ))
       echo "$result1"
result2=$(( a * b + c))
        echo "$result2"
result3=`awk 'BEGIN { printf("%2d\n", ('$c' + '$a') / '$b' )}'`
        echo "$result3"
result4=`awk 'BEGIN { printf("%2d\n", '$a' % ('$b' + '$c' ) )}'`
        echo "$result4"
declare -A result
        result[computation1]=$result1
        result[computation2]=$result2
        result[computation3]=$result3
        result[computation4]=$result4
echo ${result[@]}

for(( value=0; value<4; value++ ))
do
        Arr[value]=${result[computation$((value+1))]}
done
echo ${Arr[@]}
#Sorting in Ascending Order
echo "Sort_Series:"
echo ${Arr[@]} | awk 'BEGIN{RS=" ";} {print $1}' | sort -n

