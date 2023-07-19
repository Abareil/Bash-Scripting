#!/bin/bash

host=$1

echo "Analizando dirección IP: $host"

ping -c 1 $host > ping.log

for i in $(seq 60 70); do
	if test $(grep ttl=$i ping.log -c) = 1; then
		echo "SO Linux"
fi
done
for i in $(seq 100 200); do
        if test	$(grep ttl=$i ping.log -c) = 1;	then
                echo "SO Wondows"
fi
done

rm ping.log
