#include <stdio.h>

//Script que da respuesta al punto 2-3 del Horton

double main( int argc, char *argv[] ){

  //Inicializa las variables a usar, incluyendo el precio de los productos dependiendo su tipo

  int tipo;
  double cantidad;
  double preciotipo1 = 3.50;
  double preciotipo2 = 5.50;
  double precio;

  //Le pide al usuario el tipo de producto y la cantidad

  printf("Escriba el tipo de producto: ");
  scanf("%d", &tipo);
  printf("Escriba la cantidad del producto: ");
  scanf("%lf", &cantidad);

  //Usando una operacion logica, conoce que tipo de producto es
 
  if ( tipo == 1 ) {
    //Imprime el costo total en caso de que sea un producto tipo 1
    precio = cantidad*preciotipo1;    
    printf("El costo total para este producto es: $%f\n", precio);
  }
  else if ( tipo == 2) {
    //Imprime el costo total en caso de que sea un producto tipo 2
    precio = cantidad*preciotipo2;    
    printf("El costo total para este producto es: $%f\n", precio);
  }
  else {
    //Imprime una advertencia en caso de que el usuario no brinde un tipo de producto valido
    printf("El tipo de producto no es valido. Los productos disponibles son 1 o 2\n");
  }
  
return 0;
  
}

//Fin del script
