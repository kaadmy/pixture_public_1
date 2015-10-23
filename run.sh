#!/bin/sh

echo "========================================" >>serverlog.txt
echo "Server script run on `date`..." >>serverlog.txt

while [ 1 ]
do
    echo "Server started on `date`..." >>serverlog.txt
    ./bin/minetestserver --config minetest.conf --logfile debug.txt --gameid pixture --world ./ --port 30002
    if [ $@ ]
    then
	echo "Server crashed on `date`." >>serverlog.txt
    fi
    echo "Server stopped on `date`." >>serverlog.txt    
done

echo "Server script quit on `date`..." >>serverlog.txt