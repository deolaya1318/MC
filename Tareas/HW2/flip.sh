#!/bin/bash

#El script debe recibir tres parametros: el nombre del archivo y las dos letras. El comando tr realiza el cambio de la primera letra por la segunda y a continuacion, realiza el cambio de la segunda letra por la primera letra. Su salida se ve en la terminal
cat $3 | tr "$1$2" "$2$1"

#fin del script
