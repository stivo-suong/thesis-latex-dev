#!/bin/bash

if [ "$(expr substr $(uname -s) 1 6)" == "CYGWIN" ]; then
  #echo $PATH
  export MIKTEX_USERSTARTUPFILE=c:\\workspaces\\portable\\MikTex\\miktex\\config\\miktexstartup.ini
  echo $MIKTEX_USERSTARTUPFILE
  #D:\workspaces\portable\MikTex\miktex\config\miktexstartup.ini
  export MIKTEX_BINDIR=/cygdrive/c/workspaces/portable/MikTex/miktex/bin/
  export PATH=$PATH:/cygdrive/c/workspaces/portable/MikTex/miktex/bin/
  export TEMP=/cygdrive/c/workspaces/portable/MikTex/miktex/temp/
  export TMP=/cygdrive/c/workspaces/portable/MikTex/miktex/temp/
  export TEMPDIR=/cygdrive/c/workspaces/portable/MikTex/miktex/temp/
  export TMPDIR=/cygdrive/c/workspaces/portable/MikTex/miktex/temp

fi

  latex 'thesis.tex'
  bibtex thesis
  latex 'thesis.tex'
  latex 'thesis.tex'
  #yap thesis.dvi
  dvipdf thesis.dvi
  cygstart.exe thesis.pdf


