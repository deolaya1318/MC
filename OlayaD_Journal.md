##Journal Daniel Olaya

##27 de Mayo: 

No asisti a clase, tuve presentacion de proyecto de grado

##29 de Mayo:

Se logro modificar y leer una version anterior de un archivo guardado en git haciendo uso de los comandos git log y git checkout con el hash del archivo de la version anteriór. Codigo usado:
- git log
- git checkout #

##5 de Junio:

Para comenzar se exploró el uso de gaussrand() para generar números aleatorios con una distribución gaussiana y luego se normalizaron sobre una esfera.

Se realizaron ejercicios del Python Workbook.

##9 de Junio:

Se logró entender la estructura de make, donde se requiere llevar a cabo un comando a partir de la compilación de scripts o creación de ficheros de texto para lograr un objetivo. 
Luego de descomprimir el ejecutable de lammps requerimos del siguiente código:

- ./lmp_ubuntu_simple < in.indent^C, hay que decomentar la linea dump del archivo in.indent
- grep "^1 " dump.indent | head -1, realizar un loop variando el grep desde 1 hasta 420
- con el archivo guardado se debe hacer awk para obtener las columnas 4 y 5 que corresponden a las posiciones x, y de los 420 átomos

##10 de Junio:

En esta clase se implemento el siguiente ciclo para realizar las 25 graficas de Lissajous con un delta de 0 e igual amplitud:

- t = linspace(0,2*pi,100)
- A = 1
- delta = 0
- B = A
- fig=figure(figsize=(12,12))
- c = 1
- for a in range(5):
-    for b in range(5):
-        delta = 0
-        x = A*cos((a+1)*t+delta)
-        y = B*sin((b+1)*t)
-        subplot(5,5,c)
-        axis("off")
-        axis("equal")
-        plot(x,y)
-        c = c+1
        
las graficas obtenidas son

![](https://raw.githubusercontent.com/deolaya1318/MC/master/python/exercises/lissajous.png)

