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

        grep "^.... " prueba.csv

2. Hacer una gráfica de dispersión con puntos visibles y unidos por líneas rectas a partir de un script de bash que reciba tres argumentos, el nombre de un archivo csv, el número de la columna para el eje horizontal y el número de la columna para el eje vertical 

        gnuplot << EOF       
                set datafile separator ","
                set title "Gráfica de dispersión"
                plot '$1' using $2:$3  
                plot '$1' using $2:$3 with points 
        EOF
        
3. Usando comandos como *grep* y *cat* se modificó un archivo que contiene un millón de dígitos del número PI para que todo caracter diferente a los dígitos de pi sea eliminado y que el resultado sea dividido por lineas de 20 caracteres en un archivo con nombre PIslices20.dat.

        curl http://pi.karmona.com/>PIslices20.dat
        cat PIslices20.dat | grep -v "Pi - 10 Million Digits" | grep -v "^d "
        split -l 20 PIslices20.dat
        
En estas tres líneas de código se descarga el archivo y se guarda en PIslices20.dat, luego se elimina el título y el número de cada pagina por último se realiza una separación del archivo en lineas de 20 caracteres. 

##5 de Junio:

Para comenzar se exploró el uso de *gaussrand()* para generar números aleatorios con una distribución gaussiana y luego se normalizaron sobre una esfera.

Además se realizaron ejercicios de calculos sencillos del Python Workbook.

Con respecto a la herramienta *make* se encontró que se requiere llevar a cabo un comando a partir de la compilación de scripts o creación de ficheros de texto para lograr un objetivo. 
La utilidad *make* es una herramienta que controla la ejecución de código y otros archivos de la lista de programas dentro de un programa. Por ejemplo, se pueden instalar ejecutables que funcionen en el servidor de ubuntu de las salas de computo de la universidad como se realizo para obtener datos de lammps. 

Make obtiene sus instrucciones de un archivo llamado *makefile*, que consiste en una lista de archivos con su respectiva instrucción para crearlos. A su vez, en el siguiente link: [http://www.gnu.org/software/make/] se recomienda que al crear un programa, se debe escribir el *makefile* para instalarlo y ejecutarlo.

En un *makefile*, una regla le comunica a *Make* cómo ejecutar una serie de comandos para construir un archivo objetivo a partir de archivos de la carpeta donde se encuentra el *makefile*. Además se muestra la lista de dependencias del archivo objetivo. En esta lista se deben incluir todos los archivos requeridos como entradas a los comandos en la regla.

Este es el formato de una regla en el *makefile*:

objetivo:   dependencias ...
          comandos
          ...


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

_Proyecto Final: Realizar análisis de imagenes producidas en AFM._ 

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

Se realizó una revisión del segundo capitulo de Landau sobre error e incertidumbre, a continuación se resume lo aprendido:

Existen cuatro tipos de errores comunes en problemas resueltos computacionalmente: errores debido a descuidos o una mal modelo teórico, errores aleatorios, errores de aproximaciones, y errores debido a la acumulación de numeros flotantes en la memoria del computador. Este último error se amplifica a medida que el número de pasos requeridos para resolver el problema se aumentan.

Es necesario introducir el término *substractive cancellation*, que significa que restar dos números muy grandes que son similares aumenta el error en su calculo. Pues este error depende del inverso de esta diferencia, de tal manera que pequeñas diferencias generar mayores errores. Como se explico en el parrafo anterior, estos errores se amplifican a medida que el número de pasos del programa computacional es mayor, de tal forma que para ciertos algoritmos el error puede aumentar de una forma logarítmica, exponencial e inclusive factorial.

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

Una vez se ha encontrado el valor de la constante *a* del modelo del campo magnético en función de la distancia, debemos realizar las conversiones requeridas para hallar el valor del momento dipolar magnético.

El momento dipolar magnético a lo largo del eje es: 1.41219664267 $Am^2$

_Proyecto final: Realizar análisis de imagenes de nanopartículas producidas en AFM. Analizar la dinámica de un sistema caótico a partir de graficas del espacio de fase de una variable que se pueda medir en el sistema._

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

Para calcular la derivada en cada uno de los puntos debemos recordar su definición como un limite cuando h es infinitesimal de la función evaluada en dos puntos separados por h dividido por tal intervalo:

![](https://upload.wikimedia.org/math/7/8/e/78e314282029416f1def5ba229b0a008.png)

Existen distintos métodos computacionales para realizar derivadas: diferencias centrales, diferencias adelantadas y diferencias atrasadas. Su válidez se mide a partir del error entre el cálculo realizado y la derivada real. La ventaja de diferencias centrales consiste en que reducir el stepsize reduce el error. Sin embargo para los tres métodos existe un step a partir del cual el error deja de reducirse y empieza a aumentar.

Para hacer un *array* con separaciones logarítmicas:

        np.logspace(ini,fin,conteo)

Usando la herramienta sympy se puede realizar calculo simbólico:

        from sympy import *

Con respecto a la actividad realizada en clase, se recordó el uso de la transformada de fourier en *scipy.fftpack* como método para encontrar la frecuencia representativa en una señal con ruido, que por lo general corresponde a bajas frecuencias, para luego limpiar la señal. La señal encontrada corresponde a:

![](https://raw.githubusercontent.com/deolaya1318/MC/master/python/exercises/fourier.png)

El recíproco de la frecuencia de corte corresponde al periodo del ciclo solar, es decir de 11 años.

##24 de Junio:

Es necesario aproximar rectas (regla de trapecio) o polinomios de diferentes grados (regla de Simpson) a una función para conocer el valor de su integral, pues la integral de la función sera igual al área de la aproximación usada. En esto consiste la integración númerica computacional. Para mejorar la eficiencia de estos métodos se usan funciones que solo requieren evaluar su valor una sola vez. Al igual que la derivación númerica, existe un punto en el que reducir el step de la integración deja de reducir el error entre el valor real de la integral y el valor dado por los métodos computacionales.

En esta clase, usando *slice notation*, se pudo implementar la regla de Simpson 3/8:

![](https://upload.wikimedia.org/math/6/e/f/6ef5c494f21c878f08791fe72a6bdd96.png)

##26 de Junio:

Las ecuaciones diferenciales dan información importante de la dinámica de sistemas físicos. En métodos computacionales es obligatorio discretizar (con respecto al tiempo) la ecuación diferencial, pues el computador no conoce las derivadas de la ecuación diferencial. Un método de discretización corresponde al método de Euler. Donde se define una función que calcule la derivada y evalua el valor de la función un momento despues al multiplicar su derivada por un delta de tiempo. Al usar una linea recta para unir dos puntos, hacemos una discretización con punto medio. Para este punto debemos conocer dos parámetros *k_1* y *k_2*, que son funciones de las derivadas. Existe otro tipo de union entre los puntos inicial, final e intermedio: cuadrática. Este tipo de método es llamado Runge Kutta de tercer orden, por que se requiere conocer tres parámetros *k_1*, *k_2* y *k_3*, que al igual que el método anterior es función de sus derivadas.

##30 de Junio:

Existe la función *odeint()* del paquete *scipy* que hace uso de la familia de funciones de Adam-Bashfort de orden 4 para resolver ecuaciones diferenciales de primer orden. Esta familia de funciones corresponde a un método de pasos múltiples.

En esta clase se trabajó en el ejemplo de resonancia magnética núclear. Se implementó el método de Runge Kutta de cuarto orden para resolver la ecuación de schrodinger que describe el fenómeno.   

##1 de Julio:

Se hizo uso de la herramienta *integrate* del paquete *sympy*:
 
        from sympy import *
        t, fn, fn1, h, tn, tn1 = symbols('t fn fn1 h tn tn1')
        simplify(integrate(fn1*(t-tn)/(tn1-tn)+fn*(t-tn1)/(tn-tn1),(t,tn,tn+h)).subs(tn1:tn-h))
        
        
para demostrar las ecuaciones de Adam-Bashfort de orden 2, 3, y 4 que son usadas en las rutinas de *Fortran* que se usan en la función *odeint()* del paquete *scipy.integrate*:

![](https://upload.wikimedia.org/math/1/1/1/1119606522452adb94ad241070166c41.png)

_Proyecto final:_ La última media hora de la clase se dedicó a ampliar las ideas previas sobre el proyecto final. En las anotaciones previas en este *Journal* se comentó acerca de realizar el proyecto en dos distintas temáticas:

- Análisis de imagenes obtenidas en AFM de distintas nanopartículas
- Caracterización de un sistemas bilineal experimental usando la teoría del espacio de fase

De estas dos distintas temáticas se elige la segunda, pues existen varias técnicas de derivación numérica y de análisis de fourier que nos permite caracterizar el sistema bilineal del que se tiene datos experimentales.

##3 de Julio:

En esta clase se dedico el tiempo a introducir el tema de ecuaciones diferenciales parciales. Además se realizó grandes avances en las animaciones a entregar para la tarea de esta semana. 

_Proyecto final:_ La última hora se dedico a realizar la introducción, los objetivos y un breve marco teórico del proyecto final del curso. La idea del proyecto corresponde a caracterizar el sistema en sus dos regimenes. Los objetivos del proyecto son:

- graficar el espacio de fases de la posición angular de un punto del sistema biestable 
- encontrar las frecuencias de excitación para cada régimen
- describir cualitativamente cada régimen 

##7 de Julio:

Para resolver ecuaciones diferenciales parciales usamos la técnica de expresar las derivadas de espacio y tiempo en forma de diferencias finitas. Por cada dimensión se debe expresar una diferencia finita. 

El método de relajación consiste en usar un ansatz para una ecuación que será iterado hasta encontrar su solución. Podemos usar este método para solucionar la ecuación de Laplace 3D:

![](https://upload.wikimedia.org/math/4/4/7/447c028a9431b8c38fd5a882911b430d.png)

Herramientas útiles en la solución de ecuación de laplace 2D en el problema de fuerzas electromagnéticas en ipython notebook:
        
        for __ in range(numiter):
                placa = 1/4.*(np.roll(placa,1,axis=0)+np.roll(placa,1,axis=1)+np.roll(placa,-1,axis=0)+np.roll(placa,-1,axis=1))
                placa[0] = 0
                placa[-1] = 0
                placa[:,0] = 10
                placa[:,-1] = 0

En el problema de la ecuación de onda se logró avanzar en la solución de la condición de un extremo libre. Para establecer que un extremo de la cuerda sea libre se debe asegurar que la velocidad en el extremo libre sea nula. Esto es,

        chord[i,-1]=chord[i,-2]
        
##8 de Julio:

Para resolver la ecuación de Schrodinger usamos diferencias finitas para expresar la derivada en tiempo. Sin embargo el valor de alfa restringe aún más el valor del delta de tiempo, esto nos da el resultado explicito del valor de la función de onda en un punto despues. De tal forma que debemos usar un método implicito, que corresponde a definir que la derivada en el tiempo nos da un estimado del valor de la función de onda en un tiempo despues. Estos resultados se promedian y se obtiene el resultado del valor de la función de onda.

Se dedicó una hora a dar solución a la sexta tarea.

##10 de Julio:

Se dedicó esta clase a solucionar la tarea 6

##14 de Julio:

El método de elementos finitos es otra de las herramientas útiles para solucionar ecuaciones diferenciales. Consiste en multiplicar la función que iguala a la derivada en la ecuación diferencial por ecuaciones de prueba. Al considerar que se puede reescribir las funciones como una combinación lineal de funciones sombrero, convertimos el problema de resolver la ecuación diferencial en un problema de algebra lineal. El intervalo de la función sombrero es llamado un elemento, los puntos extremos de esta función son nodos y el conjunto de todos los nodos es llamado la malla. 

Métodos de monte carlo. Corresponde a solucionar problemas analíticos a partir de la generación de números aleatorios. Por ejemplo, para determinar el valor de pi se genera puntos aleatorios en un area cuadrada y se establece la razón entre los puntos que estan dentro de un circulo y dentro del cuadrado. Ejemplos de experimentos de monte carlo: cual es la probabilidad de que en N lanzamientos se obtengan n caras y cuántos turnos se requieren para ganar el bingo.

##15 de Julio:

El objetivo de usar el método de muestreo de importancia es reducir la varianza de la función _f_ que depende de la varianza de _I_ y de la cantidad de números aleatorios generados. Los números generados se deben estimar a partir de una cadena de markov. Esta describe procesos probabilisticos que producen estados con la probabilidad que uno quiere. Existen dos tipos de muestreo: directo e indirecto. En el muestreo directo generamos números aleatorios con una distribución similar a la función a integrar. En el muestreo indirecto es necesario establecer un condicional para escoger números que sean representativos de la distribución de interés. 

El avance a encontrar la probabilidad de n peruanos rodeados por dos colombianos en función de N colombianos sentados en una mesa se halla en el código:

        numintentos = 1000
        for intentos in linspace(1,numintentos,numintentos):
                P = 10
                mesa = np.append(np.zeros(P),np.ones(int(intentos)))
                np.random.shuffle(mesa)
                acierto = 0
                prob = np.zeros(numintentos)
                for i in range(int(intentos)-1):
                        if mesa[i-2] != mesa[i-1] and mesa[i-2] == mesa[i]:
                                acierto += 1
                prob[int(intentos)-1] = float(acierto)/intentos

En este código se generan 1000 mesas con un ordenamiento aleatorio de 10 peruanos y N colombianos que se representan por la variable intentos. Se hace uso de la función _shuffle_ para variar el orden aleatorio de la mesa y se usa un condicional para revisar que un peruano este entre dos colombianos
