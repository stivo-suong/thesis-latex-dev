#!/bin/bash

if [ "$(expr substr $(uname -s) 1 6)" == "CYGWIN" ]; then
  #echo $PATH
  export MIKTEX_USERSTARTUPFILE=D:\\workspaces\\portable\\MikTex\\miktex\\config\\miktexstartup.ini
  echo $MIKTEX_USERSTARTUPFILE
  #D:\workspaces\portable\MikTex\miktex\config\miktexstartup.ini
  export MIKTEX_BINDIR=/cygdrive/d/workspaces/portable/MikTex/miktex/bin/
  export PATH=$PATH:/cygdrive/d/workspaces/portable/MikTex/miktex/bin/
  export TEMP=/cygdrive/d/workspaces/portable/MikTex/miktex/temp/
  export TMP=/cygdrive/d/workspaces/portable/MikTex/miktex/temp/
  export TEMPDIR=/cygdrive/d/workspaces/portable/MikTex/miktex/temp/
  export TMPDIR=/cygdrive/d/workspaces/portable/MikTex/miktex/temp

fi

  latex 'article.tex'
  bibtex article
  latex 'article.tex'
  latex 'article.tex'


