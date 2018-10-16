#!/usr/bin/env bash
count=0;
path='';
sudo mysql < /var/www/html/code/onlineshop/src/onlineshop.sql
if [ -d /var/www/html/code/sql ]
then
  echo "Entering directory sql";
  cd /var/www/html/code/sql
else
  echo "No directory sql";
  exit 1;
fi
ls *.zip > temp.lis 2>/dev/null
count=$( grep -c zip temp.lis );
find . -not -iname "*.zip" -delete;
if [ $count -gt 1 ]
then
  echo "Count of ZIP files is $count. Only one allowed"&& exit 1;
fi
if [ $count -eq 0 ]
then
  echo "No ZIP file";
  exit 1;
fi
echo "Controling SQL-Files";

unzip *.zip;
ls -d *_file_ > abgaben.lis;
sed "s/ /\\\\ /g" abgaben.lis > /tmp/abgaben.1
cp /tmp/abgaben.1 abgaben.lis

while read -r line
do
    path+=$line;
    eval cd $path;
    echo $path;
    test -f onlineshop.sql || mv * onlineshop.sql;
    sudo mysql < onlineshop.sql &> errors.lis;
    cd ..;
    path='';
done < abgaben.lis
