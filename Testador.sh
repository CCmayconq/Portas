#!/bin/sh
clear
date
rm -f *.txt
echo "Gerando"
perl GSim.pl
echo "Sempre"
perl STr.pl
echo "Nunca"
perl NTr.pl
echo "Aleatorio"
perl ATr.pl
echo "Analise"
./An.x
