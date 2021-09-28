#!/bin/bash
printf "please input the num of the pics\n";
let i=1;
read num;
printf "please input the num of the zip\n";
read id;
mkdir pic;
while [ $i -le $num ]
do
    time python3 p.py; 
    printf "num $i is successfully get\n";
    mv paqu $i;
    mv $i pic;
    let i=i+1;
done
cd pic;
zip pic$id * -P 123;
mv pic$id.zip ..;
cd ..
rm -r pic;
