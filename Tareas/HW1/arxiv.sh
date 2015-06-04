artencontrados=$(
curl -s http://arxiv.org/list/cond-mat/new | #obtiene la informacion del url escogido
grep '<span class="descriptor">Title:</span> ' | #busca este patron que corresponde a los titulos de los articulos
grep -ic $1) #realiza el conteo de los articulos que tiene la palabra clave

archivos=(
$(curl -s http://arxiv.org/list/cond-mat/new | #obtiene la informacion del url escogido
grep '<span class="descriptor">Title:</span> ' | #busca este patron que corresponde a los titulos de los articulos
grep -i $1 | #busca la palabra clave en los articulos. La palabra clave entra como parametro al programa
sed 's/<span class="descriptor">Title:<\/span>\ //g')) #elimina el patron y lo aplica a todos los resultados encontrado

#formato de impresion del resultado
echo '
Busqueda en arXiv de la pagina de materia condensada:
http://arxiv.org/list/cond-mat/new

de articulos cuyo titulo tengan la palabra: '$1
echo ' 
Articulos encontrados: '$artencontrados
for ((i=0; i < $artencontrados; i++))
do
echo '- '${archivos[$i]} #imprime la primera palabra del titulo encontrado
done

