#!/bin/bash

conteo=$(($2 - $1 + 1))
trozo=$(cat $3)
echo ${trozo:$1:$conteo}
