#!/bin/bash

#inicializar el vector de tiempo y escoger un punto final para acabar el ciclo
t=0
until [t=5]
#inicio del ciclo
do
    r=$(echo "c(0.5*$t)^2" | bc -l)  #encontrar el valor de r de acuerdo a la funcion cos(w*t) donde w = 0.5
    t=$(echo $t + 0.1)  #aumentar un delta de tiempo igual a 0.1
    sh ./circle.sh $r  #realizar el codigo que grafica en gnuplot un circulo de radio r
    sleep 0.05   #hacer una pausa entre ciclos con un tiempo suficiente para observar que el circulo brilla
    clear   #borra el circulo realizado
    
done
#fin del ciclo
