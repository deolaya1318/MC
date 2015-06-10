#!/bin/bash

#El script debe recibir dos argumentos, la posicion del caracter de inicio y la del caracter de finalizacion para imprimir el fragmento del archivo que comienza y termina en las posiciones dadas. Primero inicializa las variables requeridas

inicio=$(($1 - 1))
conteo=$(($2 - $1 + 1))
completo=$(cat $3)

#Escoje el fragmento del archivo que esta entre las posiciones de entrada

echo ${completo:$inicio:$conteo}

#Fin del script
