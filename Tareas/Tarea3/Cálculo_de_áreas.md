# Cálculo de áreas.
### Realizar el análisis para una aplicación que pretende realizar el cálculo de las áreas que muestra la imagen. Definir clases y métodos necesarios. 
---
## Índice:
- ¿Qué debemos de tener en cuenta?
- Funciones a utilizar.
- Webgrafía. 
---
## ¿Qué debemos de tener en cuenta?
Para realizar una aplicación tenemos que tener en cuenta el número de áreas que se solicita crear, el número de parámetros de entrada de cada una de las áreas y la fórmula matemática de dichas áreas.
Además de esto, también tenemos que tener en cuenta las acciones que debe realizar la aplicación. En este, caso dichas acciones es pedir los datos de entrada de las áreas que solo necesitan un parámetro de entrada y las áreas que necesitan dos parámetros de entrada. Por último, debemos de tener en cuenta que la aplicación realice el cálculo de la área que el usuario quiera calcular. 
## Funciones a utilizar.
Para realizar la aplicación del cálculo de áreas debemos identificar aquellas áreas cuya función matemática sea igual o similiar para ahorrarnos tiempo en el mantenimiento de dicha aplicación. Es decir, el área del cuadrado o del rectángulo lo podemos ver como la misma función ya que el área del cuadrado es lado por lado y la del rectángulo es base por altura. 

Gracias a esto, podemos definir una función que calcule la multiplicación de dos números. Esta función se llamará *función multiplicar* Esta función multiplicará un valor llamado, por ejemplo, valor1, por otro valor llamado, por ejemplo, valor2. De tal manera, dicha función se vería de la siguiente manera: *función multiplicar(valor1, valor2)*.

Gracias a esto podemos deducir que la función del cálculo del área del cuadrado se verá de la siguiente manera: *función cuadrado(valor1, valor2)
regresa valor1 * valor1*.

Como ya dijimos anteriormente, la función del cálculo del área del cuadrado y del rectángulo es la misma, por lo que, la función del rectángulo se verá de la siguiente manera: *función rectángulo(valor1, valor2)
regresa valor1 * valor2*.

Otra área que también necesita de la *función multiplicar(valor1, valor2)* es el cálculo del área del romboide, ya que su área es base por altura. Dicho esto, la función se vería de la siguiente manera: *función romboide(valor1, valor2)
regresa valor1 * valor2*.

Para calcular el área del triángulo debemos utilizar la función empleada en los cálculos anteriores más una división. Ya que el área del triángulo es base por altura dividido entre 2 podemos decir que la función del cálculo del área del triángulo sería la siguiente: *función triángulo(valor1, valor2)
regresa (valor1 * valor2) / 2*.

El área del rombo es muy similar a la del triángulo, por lo que, podemos utilizar dicha función para calcular el área del rombo. Dicha función se vería de la siguiente manera: *función rombo(valor1, valor2)
regresa (valor1 * valor2) / 2*.

Esta misma función puede ser utilizada otra vez para calcular el área del pentágono, ya que esta es (P*a)/2. Siendo *P* el valor 1 y *a* el valor 2. Esta función se vería de la siguiente manera: *función pentágono(valor1, valo2) 
regresa (valor1 * valor2) / 2*.

El área del círculo no utiliza ninguna otra función compartida con otro área. El área del círculo se vería de la siguiente manera: *función circulo(valorR)
regresa Pi * valorR<sup>2</sup>*

Otra área que no utiliza ninguna otra función repetida es el área del trapecio. Esta función necesitará tres valores y se verías así: *función trapecio(valor1, valor2, valor3) regresa (valor1 + valor2) / 2) * valor3*.

Para que el mantenimiento de la aplicación sea efectiva deberíamos aplicar el principio de reutilización en la programación, es decir, aplicar la misma técnica con la solicitud de datos agrupando aquellas fórmulas que requieren uno o dos parámetros, como ya vimos anteriormente. 
## Webgrafía
- https://github.com/jpexposito/ets/blob/main/elementos/tareas/calculo-areas.md

___
###### Yamila Ramos Hernández
