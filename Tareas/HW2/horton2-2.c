#include <stdio.h>

//Script que da respuesta al punto 2-2 del Horton

double main( int argc, char *argv[] ){

  //Inicializa las variables a usar
  double apies;
  double apulg; 
  double lpies; 
  double lpulg; 
  double anchoyard;
  double largoyard;
  double area;

  //Le pide al usuario de las dimensiones de un salon en pies y pulgadas y las guarda en las variables pies y pulg, respesctivamente
  printf("Escriba el ancho y largo del salon en pies y pulgadas, respectivamente\n");
  scanf("%lf %lf %lf %lf", &apies, &apulg, &lpies, &lpulg);

  //Realiza la conversion de las dimensiones del salon a yardas y encuentra el area del salon.
 
  anchoyard = (apies + apulg/12)/3;
  largoyard = (lpies + lpulg/12)/3;
  area = anchoyard*largoyard;

  //Imprime el resultado de la operacion luego de la conversion
  printf("El area del salon en yardas cuadradas es: %.2f\n", area);

}

//Fin del script
