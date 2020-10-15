#!/bin/bash

liczba_dni=$2

while [ $liczba_dni -ge 0 ] ; do
        find ./ -name "*.$1" -ctime $liczba_dni -exec tar -rvf $3.tar {} \;
        liczba_dni=$[liczba_dni-1]
done