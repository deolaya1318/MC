#include <stdio.h>

//Script que da respuesta al punto 2-4 del Horton

double main( int argc, char *argv[] ){

  //Inicializa las variables a usar

  int dolarsemanal;
  double centsemanal;
  double pago;
  double horas;
  
  //Le pide al usuario el pago semanal y las horas de trabajo por semana 

  printf("Escriba su pago semanal en dolares: ");
  scanf("%lf", &pago);
  printf("Escriba las horas de trabajo por semana: ");
  scanf("%lf", &horas);

  //Calcula la ganancia por hora de trabajo y la imprime en consola
 
  dolarsemanal = (int)(pago/horas);
  centsemanal = 100*(pago/horas - dolarsemanal);

  printf("Por cada hora de trabajo, en promedio esta ganando %d dolares con %.0f centavos.\nYuhu!!!\n", dolarsemanal, centsemanal);
  
}

//Fin del script
