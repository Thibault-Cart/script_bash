###
#Auteur:Thibault Cart
#Date:10.12.2022
#Description: programme comptant chaque mots présent dans un fichier txt et affichant les mots avec les occurences
#Version: 1
###

#!/bin/bash

#variable text prend comme valeur le contenu du fichier histoire_du_soldat.txt
text=$( cat histoire_du_soldat.txt )
#transformation des majuscule ne minuscule
text=$(echo "$text" | tr '[:upper:]' '[:lower:]')
#la ponctuation est retiré
text=$(echo "$text" | tr '[:punct:]' ' ')
#les espaces multiple aussi
text=$(echo "$text" | tr -s ' ')

#declaration d'une variable de type array, -a pour faire un tableau associatif
declare -A words

#pour chaque mot présent dans la varaible $text
for word in $text; do
    #si le mots est deja dans le tableau $words ajoute 1 a la valeur
    if [ ${words["$word"]+_} ]; then
        ((words["$word"]++))
    else
        #sinon ajoute le mots au tableau $words et initialise son occurence a 1
        words["$word"]=1
    fi
done
#affichage de mots présent dans le tableau $words ansi que leur occurence
for word in "${!words[@]}"; do
    echo "$word: ${words[$word]}"
done