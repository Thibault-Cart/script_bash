#
#Auteur:Thibault Cart  
#Date: 30.11.2022
#Version: 1
#description:programme affichant hello word ou bien hello + valeur donnée en parametre du programmes
#

#!/bin/sh

# les valeurs saisie en parametres sont stocker dans des varaibles de $1 a $9 la $0 est reservé 

#variable Nom_param prend comme valeur la premiere donne en parametres si elle existe
Nom_param=$1
#si la varaible non param est vide
#-z retourne True si la longeur de la variable est zero
if [[ -z "$Nom_param" ]]; then
#affiche HEllo WOrd
   echo "HELLO WORD "
else
#Sinon affiche hello + la valeur saisie en parametres
    echo "Hello",$Nom_param
fi
