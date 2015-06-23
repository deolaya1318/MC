#_Journal Daniel Olaya_

##27 de Mayo: 

No asistí a clase, tuve presentación de proyecto de grado de ingeniería.

##29 de Mayo:

Con la herramienta *git* se realizaron dos tareas:

1. Se logró modificar y leer una version anterior de un archivo guardado en *git* con el *hash* del archivo de la versión anterior. Código usado:

        git log
        git checkout #

2. Primero se creó un archivo en *master*, entonces se borró y al regresar con *checkout* al momento inicial, se observó que el archivo vuelve a reaparecer en *master*.

Además se exploró el comando *awk* y sus funciones. En el ejemplo realizado se imprime las lineas de un arhivo *csv* cuya primera columna sea igual al número entregado:

        awk '$1 {print $1}' prueba.csv 

##2 de Junio:

En esta clase se revisó el comando *grep* del programa *bash* y se introdujó la herramiento *GNUPLOT*. Se realizaron las siguientes actividades:

1. Usar *grep* para encontrar una expresión que represente cuatro caracteres al inicio de una línea junto con un espacio a continuación:

        grep "A-Za-zDd " prueba.csv

2. Hacer una gráfica de dispersión con puntos visibles y unidos por líneas rectas a partir de un script de bash que reciba tres argumentos, el nombre de un archivo csv, el número de la columna para el eje horizontal y el número de la columna para el eje vertical 

        gnuplot << EOF       
                set datafile separator ","
                set title "Gráfica de dispersión"
                plot '$1' using $2:$3  
                plot '$1' using $2:$3 with points 
        EOF
        
3. Usando comandos como *grep* y *cat* se modificó un archivo que contiene un millón de dígitos del número PI para que todo caracter diferente a los dígitos de pi sea eliminado y que el resultado sea dividido por lineas de 20 caracteres en un archivo con nombre PIslices20.dat.

        curl http://pi.karmona.com/>PIslices20.dat
        cat PIslices20.dat | grep -v "Pi - 10 Million Digits"

##5 de Junio:

Para comenzar se exploró el uso de *gaussrand()* para generar números aleatorios con una distribución gaussiana y luego se normalizaron sobre una esfera.

Además se realizaron ejercicios de calculos sencillos del Python Workbook.

Con respecto a la herramienta *make* se encontró que se requiere llevar a cabo un comando a partir de la compilación de scripts o creación de ficheros de texto para lograr un objetivo. 

##9 de Junio:

Se logró entender la estructura de make, donde se requiere llevar a cabo un comando a partir de la compilación de scripts o creación de ficheros de texto para lograr un objetivo. 
Luego de descomprimir el ejecutable de lammps requerimos del siguiente código:

        ./lmp_ubuntu_simple < in.indent
        pos = $i
        while pos == 420
        do
        grep "^pos " dump.indent | head -1 
        done

Este código permite guardar en el archivo *dump.indent* al eliminar la linea *dump* del archivo *in.indent* la respuesta de correr el ejecutable *lmp_ubuntu_simple* y buscar la posición 1 en el archivo realizado para obtener las posiciones x, y de los 420 átomos.

_Proyecto Final:_ 

##10 de Junio:

En esta clase se implemento el siguiente ciclo para realizar las 25 graficas de Lissajous con un delta igual a 0 y con igual amplitud:

        t = linspace(0,2*pi,100)
        A = 1
        delta = 0
        B = A
        fig = figure(figsize=(12,12))
        c = 1
        for a in range(5):
                for b in range(5):
                        delta = 0
                        x = A*cos((a+1)*t+delta)
                        y = B*sin((b+1)*t)
                        subplot(5,5,c)
                        axis("off")
                        axis("equal")*
                        plot(x,y)
                        c = c+1
        
las graficas que se obtienen de este código son:

![](https://raw.githubusercontent.com/deolaya1318/MC/master/python/exercises/lissajous.png)

##12 de Junio:
Se realizó el primer quiz del curso, que evalua *GNUPLOT* y operaciones a partir de comandos de bash que buscan y reemplazan expresiones regulares.


##16 de Junio:

La interpolación es usada para completar información que brindan datos experimentales. Además de la interpolación lineal, existe la interpolación de Lagrange, que consiste en encontrar un polinomio de grado k con k+1 coeficientes que pasa por toda la secuencia de puntos. Adicionalmente en esta interpolación se hace uso de splines que corresponde a igualar la primera y segunda derivada del polinomio en los puntos, que pueden ser llamados nodos.
Haciendo uso de la función interpolate que se encuentra en la libreria scipy (*from scipy import interpolate*) se puede encontrar la interpolación requerida. La función tiene el siguiente formato:

        interpolate.interpid(/x,/y,kind="linear o slinear o cubic o cuadratic")

Para evaluar funciones 2D se puede hacer uso del comando:

        x,y = np.mgrid[iniciox:finalx:pasox"j",inicioy:finaly:pasoy"j"]

Para colorear una función de acuerdo a las coordenadas x,y de una función z(x,y) se usa:

        pcolor(x,y,z)

No siempre se puede realizar un ajuste polinomial, por ejemplo en el caso de funciones no lineales. Por ello recurrimos al método de los mínimos cuadrados que consiste en encontrar la minima diferencia cuadrática entre los puntos de un módelo y los datos experimentales. Para el realizar el ajuste por mínimos cuadrados con las funciones de *numpy* y *scipy*, usamos:

        poly_fit
        curve_fit
        poly1d

Para usar *curve_fit*: definir una función cuyo primer argumento es la variable independiente, y los otros parametros son los que se deben ajustar)

        curve_fit(*funcion*,*variableind1*,*variableind2*,*parametro1*,*parametro2*)

Como ejemplo se usó esta función para hallar la magnitud del momento magnético del imán. La gráfica del ajuste obtenido con *curve_fit* es:

![](https://raw.githubusercontent.com/deolaya1318/MC/master/python/exercises/momento.png)

_Proyecto final:_

##17 de Junio:

Se estudió cómo enviar los archivos de una rama a la rama master. Adicionalmente se hizó uso de las herramientas *root* de *scipy.optimize* y *quad* de *scipy.integrate* para encontrar las raices de un polinomio y para integrar una función entre dos límites, respectivamente. Se requiere la integración para hallar los coeficientes de la sumatoria de los terminos de fourier para reconstruir una función. Los ejemplos que se estudiaron fueron: puntos de Lagrange y funciones periódicas.

##19 de Junio:

En *Python* interactivo las herramientas *fft* y *ifft* nos brindan la transformada de fourier y la transformada inversa de fourier de una imágen o de datos experimentales. Con esta información se puede realizar análisis de imagenes, invertir las imagenes y hasta invertirlas y cambiarles su aspecto al aplicar algún tipo de filtro. Adicionalmente para variables que cambian con el tiempo, podemos conocer información de su espectro de potencias y al igual realizar filtrado datos experimentales para eliminar el ruido intrínseco debido al método de obtención. Así como conocer las frecuencias principales de una tabla de datos, como se realizó en el ejemplo de la clase.

El código requerido para leer y obtener las características de una imágen en python interactivo es:

        img = plt.imread('horizontallena.png')
        print shape(img)
        fig = plt.figure(1, figsize=(9.5,9))
        plt.imshow(img)

##23 de Junio:

Para calcular la derivada en cada uno de los puntos debemos recordar su definición como un limite cuando h es infinitesimal de la función evaluada en dos puntos separados por h dividido por tal intervalo: $\f(x)=frac{f(x+h)-f(x)}{h}$.
