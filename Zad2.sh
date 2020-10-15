#!/bin/bash

sciezka=$(pwd)

for mail in $(cat $sciezka/adresy.txt)
do
    #echo $mail sprawdzenie czy wywołuje maile pokolei 
    cat $sciezka/tekst.txt | mutt -s "Okna PCV" $mail -a $sciezka/spec*.pdf

done
