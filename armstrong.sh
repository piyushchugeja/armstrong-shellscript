#!/bin/sh
# Path: armstrong.sh
echo "Enter a number"
read num;
temp=$num;
sum=0;
digits=0;
ans=1;
counter=0;
while [ $temp -gt 0 ]
do
    digits=`expr $digits + 1`
    temp=`expr $temp / 10`
done
temp=$num;
while [ $temp -gt 0 ]
do
    counter=0;
    ans=1;
    digit=`expr $temp % 10`
    while [ $counter -lt $digits ]
    do
        ans=`expr $ans \* $digit`
        counter=`expr $counter + 1`
    done
    sum=`expr $sum + $ans`
    temp=`expr $temp / 10`
done
if [ $num -eq $sum ]
then
    echo "$num is an Armstrong number";
else
    echo "$num is not an Armstrong number";
fi
exit 0;