//
//Auteur:Thibault Cart  
//Date: 30.11.2022
//Version: 
//description:programme affichant un hello word différent e nfonction du parametres saisie par l'utilisateurs
//

// stdio.h est un fichier contenant des fonctions d'input/output comme printf() par example
#include <stdio.h>



//fonction main, dans un projet en c, la fonction main est automatiquement executé au démarage du programme
//argc = nb argument donnée en paramètres du programme commence par 1: donc un parametre alors argc = 2
//argv[] tableau qui contient les paramètres
int main (int argc, char *argv[])
{
   
    //si il ya un parametre alors
    if (argc == 2)
    {
      //print "hello "+ la valeur saisie en paramètre
      printf ("Hello %s\n", argv[1]);
    }
  else
    {
      //sinon print Hello Word
      printf ("Hello Word\n");
    }
}