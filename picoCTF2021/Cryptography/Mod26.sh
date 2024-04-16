#Description
#Cryptography can be easy, do you know what ROT13 is? cvpbPGS{arkg_gvzr_V'yy_gel_2_ebhaqf_bs_ebg13_Ncualgvd}


#!/bin/bash

array=({a..z})
arrayuper=({A..Z})
re='^[0-9]+$'
read -p "Digite sua frase para descriptografar (CESAR) : " texto
if [[ $texto =~ $re ]];then
echo "Erro";
exit
fi
echo "${array[@]}"
#valores=$(echo "$texto" | tr c-za-bC-ZA-B a-zA-Z)
#echo "$valores"
for ((c=1; c<=26; c++))
do
    letra="${array[$c]}"
    letraupper="${arrayuper[$c]}"
    letra_anterior="${array[$((c-1))]}"
    letraupper_anterior="${arrayuper[$((c-1))]}"
    echo "$texto" | tr "$letra-za-$letra_anterior$letraupper-ZA-$letraupper_anterior" "a-zA-Z"
done

#Other way to do..

array=({a..z})
arrayuper=({A..Z})
re='^[0-9]+$'
read -p "Digite sua frase para descriptografar (CESAR) : " texto
if [[ $texto =~ $re ]];then
echo "Erro";
exit
fi
echo "${array[@]}"
#valores=$(echo "$texto" | tr c-za-bC-ZA-B a-zA-Z)
#echo "$valores"
for c in {1..26}
do
    letra="${array[$c]}"
    letraupper="${arrayuper[$c]}"
    letra_anterior="${array[$((c-1))]}"
    letraupper_anterior="${arrayuper[$((c-1))]}"
    echo "$texto" | tr "$letra-za-$letra_anterior$letraupper-ZA-$letraupper_anterior" "a-zA-Z"
    ((c++));
done


echo "cvpbPGS{arkg_gvzr_V'yy_gel_2_ebhaqf_bs_ebg13_Ncualgvd}" | tr n-za-mN-ZA-M a-zA-Z
picoCTF{next_time_I'll_try_2_rounds_of_rot13_Aphnytiq}



