#!/bin/bash

#!diretorio=/mnt/c/Users/iluca/workspace/debian-post-install
diretorio=/home/dente/workspace/debian-post-install

apt_instalar(){
    while read line; do
        sudo apt install $line
    done < "$apt_programas"
    iniciar
}

iniciar(){
    echo
    echo "Selecione uma opção"
    echo
    echo "1 - Instalar programas APT"    
    echo "2 - Sair do script"
    echo
    echo

while :
do

    read opcao_selecionada
    case $opcao_selecionada in

        1) apt_programas="$diretorio/list.txt"
           apt_instalar;; 

        2) exit

    esac
done
}

iniciar