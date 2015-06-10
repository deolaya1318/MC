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

