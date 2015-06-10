#!/bin/bash

#El script recibe como argumento el nombre del archivo a descifrar y realiza el intercambio de sus caracteres de acuerdo al esquema de encriptacion. Para ello debe realizar el intercambio de los caracteres al iniciar la permutacion en el sentido contrario a como se encripto, esto es iniciar la permutacion con el cambio de z por v y llegar hasta el cambio de a por i. Para comenzar inicializamos las variables requeridas, esto es, las listas que llevan las letras a permutar y el archivo de entrada

declare -a la=(z y x w v u t s r q p o n m l k j i h g f e d c b a)
declare -a lb=(v h p u z s f g x e d r m b j a c y k t q o l w n i)
archivo=$(cat $1)

#Ahora se realiza un ciclo para hacer 10 permutaciones con el esquema

for k in `seq 1 10`;
do

#Aqui se usa la funcion flip.sh para hacer el intercambio de una letra por otra en el archivo de entrada

    for j in `seq 1 26`;
    do
	archivo=$(echo "$archivo"| sh flip.sh ${la[$j]} ${lb[$j]})
    done
done   

#Se han finalizado los ciclos y se imprime el resultado en la terminal

echo "$archivo"

#Fin del script
