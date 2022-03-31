#!/bin/bash

sum=0
count=0

while read line
do
    sum=$((sum+line))
    count=$((count+1))
done < 1000ValueCalcMean

ans=$((sum/count))
echo $ans
echo $ans > mean_result_201930310065_xlf.txt