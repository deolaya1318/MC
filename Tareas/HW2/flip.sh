#!/bin/bash
#El script debe recibir tres parametros: el nombre del archivo y las dos letras. Su salida se ve en la terminal.
cat $1 | tr "$2$3" "$3$2"
