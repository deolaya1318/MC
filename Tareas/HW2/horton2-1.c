#include <stdio.h>

//Script que da respuesta al punto 2-1 del Horton

double main( int argc, char *argv[] ){

  //Inicializa las variables a usar
  int yard; 
  int pies; 
  double pulg; 

  //Le pide al usuario que escriba una distancia en pulgadas y guarda su valor en la variable pulg
  printf("Escriba una distancia en pulgadas\n");
  scanf("%lf", &pulg);

  //Realiza la conversion de la distancia de entrada en yardas, pies y pulgadas.
 
  yard = pulg/36;
  pulg -= yard*36;  
  pies = pulg/12;
  pulg -= pies*12; 
  
  //Imprime el resultado de la conversion
  printf("La distancia escrita equivale a: %d yardas, %d pies, %f pulgadas\n", yard, pies, pulg);

}

//Fin del script
