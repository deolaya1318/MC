#Journal Daniel Olaya

##27 de Mayo: 

No asistí a clase, tuve presentación de proyecto de grado de ingeniería.

##29 de Mayo:

Con la herramienta *git* se realizaron dos tareas:

1. Se logró modificar y leer una version anterior de un archivo guardado en git con el hash del archivo de la versión anterior. Código usado:

        - *git log*
        - *git checkout #*

2. Primero se creó un archivo en master, entonces se borró y al regresar con checkout al momento inicial, se observó que el archivo vuelve a reaparecer en master.

Además se exploró el comando 'awk' y sus funciones. En el ejemplo realizado se imprime las lineas de un arhivo .csv cuya primera columna sea igual al número entregado:

- *awk '$1 {print $1}' prueba.csv 

##2 de Junio:



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

- *t = linspace(0,2*pi,100)
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
-        axis("equal")*
-        *plot(x,y)*
-        *c = c+1*
        
las graficas obtenidas son

![](https://raw.githubusercontent.com/deolaya1318/MC/master/python/exercises/lissajous.png)

##12 de Junio:
Se realizó el primer quiz del curso, que evalua GNUPLOT y operaciones a partir de comandos de bash que buscan y reemplazan expresiones regulares.


##16 de Junio:

La interpolación es usada para completar información que brindan datos experimentales. Además de la interpolación lineal, existe la interpolación de Lagrange, que consiste en encontrar un polinomio de grado k con k+1 coeficientes que pasa por toda la secuencia de puntos. Adicionalmente en esta interpolación se hace uso de splines que corresponde a igualar la primera y segunda derivada del polinomio en los puntos, que pueden ser llamados nodos.
Haciendo uso de la función interpolate que se encuentra en la libreria scipy (from scipy import interpolate) se puede encontrar la interpolación requerida. La función tiene el siguiente formato:

- *interpolate.interpid(/x,/y,kind="linear o slinear o cubic o cuadratic")*

Para evaluar funciones 2D se puede hacer uso del comando:

- *x,y = np.mgrid[iniciox:finalx:pasox"j",inicioy:finaly:pasoy"j"]*

Para colorear una función de acuerdo a las coordenadas x,y de una función z(x,y):

- *pcolor(x,y,z)*

No siempre se puede realizar un ajuste polinomial, por ejemplo en el caso de funciones no lineales. Por ello recurrimos al método de los mínimos cuadrados que consiste en encontrar la minima diferencia cuadrática entre los puntos de un módelo y los datos experimentales. Para el Uso de ajuste por mínimos cuadrados con las funciones de *numpy* y *cp*, usamos:

- *poly_fit*
- *curve_fit* (definir una función cuyo primer argumento es la variable independiente, y los otros parametros son los que se deben ajustar): 
- *curve_fit*(*funcion*,*variableind1*,*variableind2*,*parametro1*,*parametro2*)
- *poly1d*

recordar añadir datos del fit y la receta de la solución. Además lo del proyecto final

##17 de Junio:

Se estudio cómo enviar los archivos de una rama a la rama master. Adicionalmente se hizo uso de las herramientas *root* de *scipy.optimize* y *quad* de *scipy.integrate* para encontrar las raices de un polinomio y para integrar una función entre dos limites, respectivamente. Se requiere la integración para hallar los coeficientes de la sumatoria de los terminos de fourier para reconstruir una función. Los ejemplos que se estudiaron fueron: puntos de Lagrange y funciones periódicas.
