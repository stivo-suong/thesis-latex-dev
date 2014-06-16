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
backup '0_frontmatter/abstract' ext[@]
backup '0_frontmatter/acknowledgement' ext[@]
backup '1_introduction/introduction' ext[@]
backup '2/literature_review' ext[@]
backup '3/sar' ext[@]
backup '4/polsar' ext[@]
backup '5/applications' ext[@]
backup '6/conclusional_discussion' ext[@]
backup '9_backmatter/appendix' ext[@]
backup 'Latex/Macros/MacroFile1' ext[@]

#mv thesis.tex b.thesis.tex
#mv thesis.bib b.thesis.bib
#rm thesis.*
#mv b.thesis.tex thesis.tex
#mv b.thesis.bib thesis.bib

#rm chap*.pdf
#rm chap*.txt

