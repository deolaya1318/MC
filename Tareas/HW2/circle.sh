#!/bin/bash
#convierte el sript de bash por un script de gnuplot
gnuplot<<EOF
#guarda las variables que determinan el radio y los limites de la grafica para que el circulo tenga su centro en el origen del marco coordenado
r=$1
xlim=1
ylim=1
#configuracion para graficar en la terminal, para parametrizar la funcion a graficar, para observar la grafica a escala 1 a 1, y para designar los limites de ambos ejes
set term dumb
set parametric
set size ratio 0.5
set xrange [xlim:-xlim]
set yrange [ylim:-ylim]
#grafica el circulo con radio r dado por la terminal
plot r*cos(t),r*sin(t) 
EOF
#volvemos a un script en bash
