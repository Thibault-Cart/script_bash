#
#Auteur:Thibault Cart
#Date: 08.13.2022
#Version: 1
#description:programe calculant une factoriel
#

#!/bin/sh

#lit la valeur saisie par l'utilisateur en parametres lors de l'execution du script et la stock dans la varaible nombreFactoriel

#initialistaion de 2 varaible
compte=1
factoriel=1

nombrefactoriel=$1

#condition qui regarde si la données dans la variables nombrefactoriel sont seulement numéraire
# ^[0-9]+$ est une expression reguliere qui qui verifie que une string comporte que des nombres
if [[ "$nombrefactoriel" =~ ^[0-9]+$ ]]; then
    
    #si la variable $nombreFactoriel est vide (-z) ou que la valeur de la variable $nombreFactoriel est plus petit que 0
    if [[ -z "$nombrefactoriel" || $nombrefactoriel -lt 0 ]]; then
        #affiche un message demandant de saisir un nombre valide
        echo "Merci de saisir un nombre valide "
    else
        #si la valeur de la variable $nombreFactoriel est egual a 0 ou 1 affiche 1
        if [[ $nombrefactoriel -eq 0 || $nombrefactoriel -eq 1 ]];then
            echo 1
        else
            #sinon calcule la factoriel du nombre saisie
            #boucle qui va sexecute pour un nombre n = 1 et jusqu'a que n soit egual a $nombreFactoriel, n prend +1 a chaque iteration
            for n in $(seq 1 $nombrefactoriel) ;
            do
                #calcule de la factoriel avec la variable factoriel qui est multiplié par n
                factoriel=$(echo $(( factoriel * n )))
            done
            #affichage
            echo "Factoriel utilisant la methode traditionnel"
            echo $factoriel
            
            
            
        fi
        #calcule de factoriel et affichage en utilisant bc
        echo "Factoriel utilisant BC "
        seq -s "*" 1 $nombrefactoriel |bc
        
    fi
else
    echo "merci de mettre en parametres un nombre "
fi

