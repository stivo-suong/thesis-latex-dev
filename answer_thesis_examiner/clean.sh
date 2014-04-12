#!/bin/bash

declare -a ext=('tex' 'bib');
f_name2='chap2'

function e {
    echo $1
    eval $1
}


function backup {
    f_name=$1
    declare -a ext=("${!2}")
    #ext=$2

    for t in ${ext[@]}
    do
      e "mv ${f_name}.${t} b.${f_name}.${t}"
    done
    
    e "rm ${f_name}.*"
    
    for t in ${ext[@]}
    do
      e "mv b.${f_name}.${t} ${f_name}.${t}"
    done
}

backup 'answer_document' ext[@]
backup 'chap1' ext[@]
backup 'chap2' ext[@]
backup 'chap3' ext[@]

