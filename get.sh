files=`$1`
awkfile=$2
for file in $files;do
    echo $file >> $3
    awk -f $awkfile $file >> $3
    echo "\n" >> $3
done
