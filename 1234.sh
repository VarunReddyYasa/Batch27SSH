#! /bin/sh
echo "I am yet to do"
echo "i am learning devops, devops is fun, Linux is OS which is light, linux is linux" > testing.txt

maxCount=0
maxWord=""

for i in $@
do
        sed -i 's/light/linux/' testing.txt
        count=`grep -io $i testing.txt | wc -l`

        if [ $count -gt $maxCount ]
        then
                maxCount=$count
                maxWord=$i
        fi
done

echo "maximum times occured word: $maxWord at $maxCount times"
