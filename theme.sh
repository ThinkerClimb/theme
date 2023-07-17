#!/bin/bash
file_old=""
file_new=""
mkdir tmp
shopt -s extglob
cp -pr ./!(.git|release|theme.sh|tmp) ./tmp/
shopt -u extglob
cd tmp
IFS_old=$IFS
IFS=$'\n'

list=`ls | find ./ -name '*miyoomini*' -type d`
for file_old in $list
do
file_new=`echo "$file_old"|sed 's/miyoomini/anbernic/g'`
sudo mv $file_old $file_new
echo $file_new
done

list=`ls | find ./ -name '*MiyooMini*' -type d`
for file_old in $list
do
file_new=`echo "$file_old"|sed 's/MiyooMini/Anbernic/g'`
sudo mv $file_old $file_new
echo $file_new
done

list=`ls | find ./ -name '*Miyoomini*' -type d`
for file_old in $list
do
file_new=`echo "$file_old"|sed 's/Miyoomini/Anbernic/g'`
sudo mv $file_old $file_new
echo $file_new
done

list=`ls | find ./ -name '*miyoomini*'`
for file_old in $list
do
file_new=`echo "$file_old"|sed 's/miyoomini/anbernic/g'`
sudo mv $file_old $file_new
echo $file_new
done

list=`ls | find ./ -name '*MiyooMini*'`
for file_old in $list
do
file_new=`echo "$file_old"|sed 's/MiyooMini/Anbernic/g'`
sudo mv $file_old $file_new
echo $file_new
done

list=`ls | find ./ -name '*Miyoomini*'`
for file_old in $list
do
file_new=`echo "$file_old"|sed 's/Miyoomini/Anbernic/g'`
sudo mv $file_old $file_new
echo $file_new
done

list=`ls | find ./ -name '*miyoo*' -type d`
for file_old in $list
do
file_new=`echo "$file_old"|sed 's/miyoo/anbernic/g'`
sudo mv $file_old $file_new
echo $file_new
done

list=`ls | find ./ -name '*Miyoo*' -type d`
for file_old in $list
do
file_new=`echo "$file_old"|sed 's/Miyoo/Anbernic/g'`
sudo mv $file_old $file_new
echo $file_new
done

list=`ls | find ./ -name '*MIYOO*' -type d`
for file_old in $list
do
file_new=`echo "$file_old"|sed 's/MIYOO/ANBERNIC/g'`
sudo mv $file_old $file_new
echo $file_new
done

list=`ls | find ./ -name '*Miyoo*'`
for file_old in $list
do
file_new=`echo "$file_old"|sed 's/Miyoo/Anbernic/g'`
sudo mv $file_old $file_new
echo $file_new
done

list=`ls | find ./ -name '*miyoo*'`
for file_old in $list
do
file_new=`echo "$file_old"|sed 's/miyoo/anbernic/g'`
sudo mv $file_old $file_new
echo $file_new
done

list=`ls | find ./ -name '*MIYOO*'`
for file_old in $list
do
file_new=`echo "$file_old"|sed 's/MIYOO/ANBERNIC/g'`
sudo mv $file_old $file_new
echo $file_new
done

list=`ls | grep -rl miyoomini`
for file_old in $list
do
    sed -i "s/miyoomini/anbernic/g" $file_old
done

list=`ls | grep -rl MiyooMini`
for file_old in $list
do
    sed -i "s/MiyooMini/Anbernic/g" $file_old
done

list=`ls | grep -rl Miyoomini`
for file_old in $list
do
    sed -i "s/Miyoomini/Anbernic/g" $file_old
done

list=`ls | grep -rl "Miyoo mini"`
for file_old in $list
do
    sed -i "s/Miyoo mini/Anbernic/g" $file_old
done

list=`ls | grep -rl "Miyoo Mini"`
for file_old in $list
do
    sed -i "s/Miyoo Mini/Anbernic/g" $file_old
done

list=`ls | grep -rl MIYOOMINI`
for file_old in $list
do
    sed -i "s/MIYOOMINI/ANBERNIC/g" $file_old
done

list=`ls | grep -rl miyoo`
for file_old in $list
do
    sed -i "s/miyoo/anbernic/g" $file_old
done

list=`ls | grep -rl Miyoo`
for file_old in $list
do
    sed -i "s/Miyoo/Anbernic/g" $file_old
done

list=`ls | grep -rl MIYOO`
for file_old in $list
do
    sed -i "s/MIYOO/ANBERNIC/g" $file_old
done

IFS=$IFS_old
cd ../
cp -pr tmp/* ./
rm -rf tmp

