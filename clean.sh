#!/bin/bash

declare -a ext=('tex' 'bib');
#f_name2='chap2'

function e {
    echo $1
    eval $1
}


function backup {
    f_name=$1
    b_name=$(basename $1)
    p_name=${f_name%/*}
    e "${p_name}"
    declare -a ext=("${!2}")
    #ext=$2

    for t in ${ext[@]}
    do
      e "mv ${p_name}/${b_name}.${t} ${p_name}/b.${b_name}.${t}"
    done
    
    e "rm ${f_name}.*"
    
    for t in ${ext[@]}
    do
      e "mv ${p_name}/b.${b_name}.${t} ${p_name}/${b_name}.${t}"
    done
}

backup './thesis' ext[@]
backup '0_frontmatter/dedication' ext[@]


#mv thesis.tex b.thesis.tex
#mv thesis.bib b.thesis.bib
#rm thesis.*
#mv b.thesis.tex thesis.tex
#mv b.thesis.bib thesis.bib

#rm chap*.pdf
#rm chap*.txt

