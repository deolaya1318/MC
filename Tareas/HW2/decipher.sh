#!/bin/bash
declare -a letras1=(z y x w v u t s r q p o n m l k j i h g f e d c b a)
declare -a letras2=(v h p u z s f g x e d r m b j a c y k t q o l w n i)

archivo=$1

for i in `seq 1 10`;
do
    for i in 'seq 1 26'
    do
	sh flip.sh $archivo $letras1[$i] $letras2[$i]
    done
done   
