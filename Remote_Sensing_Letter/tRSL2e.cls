%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
% This is file `tRSL2e.cls'
%%
% Version : v3.7
%%
% tRSL - Remote Sensing Letters
%%
%  This file is part of the LaTeX2e system.
%%
% 'rotating.sty' to be used for rotating tables and figures
%%
% Suitcase:
%% CMR family
%%
% History of Changes:
% v1.0 - First released 1998/04/09
% v2.0 - First released 2004/07/01
% 2. Provision for subject classification after the Keywords,
%    e.g. "AMS Subject Classification: 65K05; 90C30"
% v3.0 - First released 2004/09/28
% 1. Modified for Harvard (author-date) references instead of numbered refs
% v3.1 - First released 2004/12/20
% 1. Made inclusion of \jvol{} \jnum{} \jyear{} \jmonth{} optional (defaults to 'Vol. 00, No. 00, DD Month 200x')
% 2. Made inclusion of \received optional (defaults to 'Received 00 Month 200x; in final form 00 Month 200x')
% v3.2 - First released 2006/03/04
% 1. Made page width 42pc
% 2. Made first page footnote available for tRSL articles
% v3.3 - First released 2006/10/18
% 1. Made upright lc Greek, etc. available
% 2. Made BST file available
% 3. Made subequation style available
% v3.4 - First released 2008/01/14
% 1. Made page width 32.65pc
% 2. Made abstract indented left and right.
% v3.5 - First released 2008/09/26
% 1. Removed call for mathbbol so that blackboard fonts default to AMS style
% 2. Lists now call enumerate.sty
% 3. Style for dashes changed to be consistent with the 'Further notes on style' online for this journal
% v3.6 - First released 2010/10/15
% 1. Inserted call for modified version of subfigure.sty (modsubfig.sty) to produce italic subfigure labels within upright parentheses
% v3.7 - First released 2013/02/22
% 1. Provision for \articletype above \title (e.g. Research Article, Editorial, Book Review, Brief
%    Communication); blank by default
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tRSL2e}[2013/02/22 - v3.7 Remote Sensing Letters LaTeX2e document class]
\newif\if@restonecol
\@twosidetrue\@mparswitchtrue
\@twocolumnfalse
%%
\def\jobtag{Remote Sensing Letters}
\newdimen\draftrule
\draftrule=0pt
\newif\ifdraft
\draftfalse
\newif\ifprinter
\newif\ifappendix\appendixfalse
%
\newdimen\trimrule
\trimrule=.1pt
%
\newdimen\draftrule
\draftrule=0pt
%
\DeclareOption{draft}{\setlength\overfullrule{5pt}\draftrule0.1pt\global\drafttrue}
\DeclareOption{printer}{\setlength\overfullrule{0pt}\trimrule0pt\global\printertrue}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
%
\ExecuteOptions{legalpaper,onecolumn,final}
\ProcessOptions
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Boxes & Dimensions %%%%%%%%%%%%%%%%%%
%
\newdimen\trimheight
\newdimen\trimwidth
\newdimen\typeheight
\newdimen\typewidth
\newdimen\normaltextheight
\newdimen\blindfoliodrop
\newdimen\tempdimen
\newdimen\rhdraftruleheight
\rhdraftruleheight\draftrule
%
\newbox\tempbox
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Boxes & Dimensions %%%%%%%%%%%%
%
\def\editedfont{\normalfont\fontsize{11}{12}\selectfont\itshape\raggedright\leftskip1pc\rightskip5pc plus 1fill{}}
\def\abstractfont{\normalfont\fontsize{9}{10}\selectfont\leftskip2pc\rightskip2pc}%
\def\authorfont{\normalfont\fontsize{10}{13}\selectfont\centering}
\def\affilfont{\normalfont\fontsize{9}{10}\selectfont\centering}%
\def\receivedfont{\normalfont\fontsize{8}{12}\selectfont\centering\itshape}
\def\bibliofont{\fontsize{10}{12}\selectfont}%
\def\dropfoliofont{\fontsize{8}{10}\selectfont}%
\def\extractfont{\fontsize{10}{12}\selectfont\leftskip12pt\rightskip12pt}%
\def\figcaptionfont{\fontsize{8}{9}\selectfont}%
\def\fignumfont{\fontsize{8}{9}\selectfont}%
\let\foliofont\dropfoliofont
\def\indexfont{\normalfont\fontsize{9}{12}\selectfont\raggedright}%
\def\keywordfont{\normalfont\fontsize{9}{10}\selectfont\leftskip2pc\rightskip2pc plus1fill}%
\def\listfont{}%
\def\rhfont{\fontsize{8}{12}\selectfont\itshape}%
\def\rffont{\fontsize{8}{10}\selectfont\itshape}%
\def\sectionfont{\fontsize{11}{13}\selectfont\bfseries\raggedright\boldmath}%
\def\subsectionfont{\fontsize{11}{13}\selectfont\bfseries\itshape\raggedright\boldmath}%
\def\subsubsectionfont{\fontsize{11}{13}\selectfont\bfseries\boldmath}%
\def\paragraphfont{\fontsize{11}{13}\selectfont\bfseries\itshape\boldmath}%\itshape%
\def\subparagraphfont{\fontsize{11}{13}\selectfont\itshape}%
\def\tablefont{\fontsize{8}{9}\selectfont}%
\def\tablecaptionfont{\fontsize{8}{9}\selectfont\leftskip\tabledim\rightskip\tabledim\centering}%
\def\tablenumfont{\fontsize{8}{9}\selectfont}%
\def\tabnotefont{\fontsize{8}{9}\selectfont}%
\def\articletypefont{\fontsize{13}{16}\selectfont\bfseries\centering\uppercase}%
\def\titlefont{\fontsize{13}{16}\selectfont\bfseries\centering}%
\def\thanksfont{\fontsize{8}{9}\selectfont}
\def\sluglinefont{\fontsize{6}{8}\selectfont}%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Fonts %%%%%%%%%%%%%
\def\@xpt{10}
\def\@xiiipt{13}
\def\@xivpt{14}
\def\@xvipt{16}
\def\@xipt{11}

\def\@xviiipt{18}
%
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xipt\@xiiipt
   \abovedisplayskip 13\p@ \@plus2\p@ minus.5pt
   \abovedisplayshortskip \abovedisplayskip
   \belowdisplayskip 13\p@ \@plus2\p@ minus.5pt
   \belowdisplayshortskip\belowdisplayskip
   \let\@listi\@listI}
\normalsize
%
\newcommand\small{%
   \@setfontsize\small\@xpt{11}%
   \abovedisplayskip 8.5\p@ \@plus3\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@
               \parsep 2\p@ \@plus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip\setSmallDelims}
%
\def\setSmallDelims{%
\def\big##1{{\hbox{$\left##1\vbox to7.5\p@{}\right.\n@space$}}}%
\def\Big##1{{\hbox{$\left##1\vbox to10.5\p@{}\right.\n@space$}}}%
\def\bigg##1{{\hbox{$\left##1\vbox to13.5\p@{}\right.\n@space$}}}%
\def\Bigg##1{{\hbox{$\left##1\vbox to16.5\p@{}\right.\n@space$}}}%
\def\biggg##1{{\hbox{$\left##1\vbox to19.5\p@{}\right.\n@space$}}}%
\def\Biggg##1{{\hbox{$\left##1\vbox to22.5\p@{}\right.\n@space$}}}%
}
%
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{10}%
   \abovedisplayskip 6\p@ \@plus2\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus\p@
               \parsep 2\p@ \@plus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip\setFootnotesizeDelims
   }
%
\def\setFootnotesizeDelims{%
\def\big##1{{\hbox{$\left##1\vbox to6.5\p@{}\right.\n@space$}}}%
\def\Big##1{{\hbox{$\left##1\vbox to9.5\p@{}\right.\n@space$}}}%
\def\bigg##1{{\hbox{$\left##1\vbox to12.5\p@{}\right.\n@space$}}}%
\def\Bigg##1{{\hbox{$\left##1\vbox to15.5\p@{}\right.\n@space$}}}%
\def\biggg##1{{\hbox{$\left##1\vbox to18.5\p@{}\right.\n@space$}}}%
\def\Biggg##1{{\hbox{$\left##1\vbox to21.5\p@{}\right.\n@space$}}}%
}
%
\newcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\large{\@setfontsize\large\@xipt{13}}%16/19
\newcommand\Large{\@setfontsize\Large\@xviipt{18}}%18/18
\newcommand\LARGE{\@setfontsize\LARGE\@xviiipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Fonts family definitions %%%%%%%%%%%%%
\def\capsdefault{caps}% All CAPS
\DeclareRobustCommand\capsshape
        {\not@math@alphabet\capsshape\mathrm
         \fontshape\capsdefault\selectfont}
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Front Matter Fonts %%%%%%%%%%%%%%%%%%%%
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareOldFontCommand{\bi}{\bfseries\itshape}{\bfseries\itshape}
\newcommand{\cal}{\protect\pcal}
\newcommand{\pcal}{\@fontswitch{\relax}{\mathcal}}
\newcommand{\mit}{\protect\pmit}
\newcommand{\pmit}{\@fontswitch{\relax}{\mathnormal}}
%
\renewcommand\rmdefault{cmr}
\newcommand\rmmathdefault{cmr}
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Front Matter Fonts %%%%%%%%%%%%%%%%%%%%%%
\DeclareFontFamily{OT1}{Clearface}{}
\DeclareFontShape{OT1}{Clearface}{m}{n}{ <-> Clearface-Regular }{}
\DeclareFontShape{OT1}{Clearface}{m}{it}{ <-> Clearface-RegularItalic }{}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Bold Math %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\encodingdefault{OT1}%
\fontencoding{OT1}%
%
\SetSymbolFont{operators}{normal}{\encodingdefault}{\rmdefault}{m}{n}
\SetSymbolFont{letters}{normal}{OML}{\rmmathdefault}{m}{it}
\SetSymbolFont{symbols}{normal}{OMS}{\rmmathdefault}{m}{n}
\SetSymbolFont{largesymbols}{normal}{OMX}{\rmmathdefault}{m}{n}
\SetMathAlphabet{\mathbf}{normal}{\encodingdefault}{\rmdefault}{bx}{n}%
\SetMathAlphabet{\mathsf}{normal}{\encodingdefault}{\sfdefault}{m}{n}%
\SetMathAlphabet{\mathrm}{normal}{\encodingdefault}{\rmdefault}{m}{n}%
\SetMathAlphabet{\mathtt}{normal}{\encodingdefault}{Courier}{m}{n}%
%
\SetSymbolFont{operators}{bold}{OT1}{\rmdefault}{bx}{n}
%\SetSymbolFont{letters}{bold}{OML}{cmmib}{bx}{it}
\SetSymbolFont{symbols}{bold}{OMS}{\rmmathdefault}{bx}{n}
\SetSymbolFont{largesymbols}{bold}{OMX}{\rmmathdefault}{bx}{n}
\SetMathAlphabet{\mathbf}{bold}{\encodingdefault}{\rmdefault}{bx}{n}%
\SetMathAlphabet{\mathsf}{bold}{\encodingdefault}{\sfdefault}{bx}{n}%
\SetMathAlphabet{\mathrm}{bold}{\encodingdefault}{\rmdefault}{bx}{n}%
\SetMathAlphabet{\mathtt}{bold}{\encodingdefault}{Courier}{bx}{n}%
%%
\def\boldmath{\mathversion{bold}}
\def\bm#1{\mathchoice
                                        {\mbox{\boldmath$\displaystyle#1$}}%
          {\mbox{\boldmath$#1$}}%
          {\mbox{\boldmath$\scriptstyle#1$}}%
          {\mbox{\boldmath$\scriptscriptstyle#1$}}}
%
% define blackboard font if needed
\def\bb#1{\mathchoice
                                        {\mbox{\fontfamily{ams}\fontsize{\tf@size}{\tf@size}\selectfont\bf#1}}%
                                        {\mbox{\fontfamily{ams}\fontsize{\tf@size}{\tf@size}\selectfont\bf#1}}%
                                        {\mbox{\fontfamily{ams}\fontsize{\sf@size}{\sf@size}\selectfont\bf#1}}%
                                        {\mbox{\fontfamily{ams}\fontsize{\ssf@size}{\ssf@size}\selectfont\bf#1}}}
%
\DeclareMathAlphabet{\mathbb}{OT1}{ams}{bx}{n}
\SetMathAlphabet\mathbb{normal}{OT1}{ams}{bx}{n}
\SetMathAlphabet\mathbb{bold}{OT1}{ams}{bx}{n}
\def\bb{\mathbb}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Macro for changing \mathversion's
\providecommand{\mathch}[2]{% Derived from AMSBSY.STY
  \begingroup
  \let\@nomath\@gobble \mathversion{#1}%
  \math@atom{#2}{%
  \mathchoice%
    {\hbox{$\m@th\displaystyle#2$}}%
    {\hbox{$\m@th\textstyle#2$}}%
    {\hbox{$\m@th\scriptstyle#2$}}%
    {\hbox{$\m@th\scriptscriptstyle#2$}}}%
  \endgroup}
%
% The following changes encoding from U to OML
% This allows to use eurm/b as (more or less) a math italic font.
%
\DeclareFontFamily{OML}{eur}{\skewchar\font'177}
\DeclareFontShape{OML}{eur}{m}{n}{
  <5> <6> <7> <8> <9> gen * eurm
  <10> <10.95> <12> <14.4> <17.28> <20.74> <24.88> eurm10
  }{}
\DeclareFontShape{OML}{eur}{b}{n}{
  <5> <6> <7> <8> <9> gen * eurb
  <10> <10.95> <12> <14.4> <17.28> <20.74> <24.88> eurb10
  }{}
%
\DeclareMathVersion{upright}
\DeclareMathVersion{boldupright}
\SetSymbolFont{letters}{upright}    {OML}{eur}{m}{n}
\SetSymbolFont{letters}{boldupright}{OML}{eur}{b}{n}
\DeclareRobustCommand{\mathup}[1]{\mathch{upright}{#1}}
\DeclareRobustCommand{\mathbup}[1]{\mathch{boldupright}{#1}}

% lower-case Greek
\newcommand\ualpha{\mathup{\alpha}}
\newcommand\ubeta{\mathup{\beta}}
\newcommand\ugamma{\mathup{\gamma}}
\newcommand\udelta{\mathup{\delta}}
\newcommand\uepsilon{\mathup{\epsilon}}
\newcommand\uzeta{\mathup{\zeta}}
\newcommand\ueta{\mathup{\eta}}
\newcommand\utheta{\mathup{\theta}}
\newcommand\uiota{\mathup{\iota}}
\newcommand\ukappa{\mathup{\kappa}}
\newcommand\ulambda{\mathup{\lambda}}
\newcommand\umu{\mathup{\mu}}
\newcommand\unu{\mathup{\nu}}
\newcommand\uxi{\mathup{\xi}}
\newcommand\upi{\mathup{\pi}}
\newcommand\urho{\mathup{\rho}}
\newcommand\usigma{\mathup{\sigma}}
\newcommand\utau{\mathup{\tau}}
\newcommand\uupsilon{\mathup{\upsilon}}
\newcommand\uphi{\mathup{\phi}}
\newcommand\uchi{\mathup{\chi}}
\newcommand\upsi{\mathup{\psi}}
\newcommand\uomega{\mathup{\omega}}
\newcommand\uvarepsilon{\mathup{\varepsilon}}
\newcommand\uvartheta{\mathup{\vartheta}}
\newcommand\uvarpi{\mathup{\varpi}}
\let\uvarrho\varrho % don't exist in eurm.
\let\uvarsigma\varsigma
\newcommand\uvarphi{\mathup{\varphi}}
\newcommand\ubalpha{\mathbup{\alpha}}
\newcommand\ubbeta{\mathbup{\beta}}
\newcommand\ubgamma{\mathbup{\gamma}}
\newcommand\ubdelta{\mathbup{\delta}}
\newcommand\ubepsilon{\mathbup{\epsilon}}
\newcommand\ubzeta{\mathbup{\zeta}}
\newcommand\uboldeta{\mathbup{\eta}}
\newcommand\ubtheta{\mathbup{\theta}}
\newcommand\ubiota{\mathbup{\iota}}
\newcommand\ubkappa{\mathbup{\kappa}}
\newcommand\ublambda{\mathbup{\lambda}}
\newcommand\ubmu{\mathbup{\mu}}
\newcommand\ubnu{\mathbup{\nu}}
\newcommand\ubxi{\mathbup{\xi}}
\newcommand\ubpi{\mathbup{\pi}}
\newcommand\ubrho{\mathbup{\rho}}
\newcommand\ubsigma{\mathbup{\sigma}}
\newcommand\ubtau{\mathbup{\tau}}
\newcommand\ubupsilon{\mathbup{\upsilon}}
\newcommand\ubphi{\mathbup{\phi}}
\newcommand\ubchi{\mathbup{\chi}}
\newcommand\ubpsi{\mathbup{\psi}}
\newcommand\ubomega{\mathbup{\omega}}
\newcommand\ubvarepsilon{\mathbup{\varepsilon}}
\newcommand\ubvartheta{\mathbup{\vartheta}}
\newcommand\ubvarpi{\mathbup{\varpi}}
\newcommand\ubvarrho{\boldsymbol{\varrho}} % don't exist in eurb.
\newcommand\ubvarsigma{\boldsymbol{\varsigma}}
\newcommand\ubvarphi{\mathbup{\varphi}}
\newcommand\upartial {\mathup{\partial}}
\newcommand\ubpartial{\mathbup{\partial}}

%%%%End of upright lc Greek etc.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Fonts %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\trimheight9in
\trimwidth6in
\typeheight200mm%% 43pc
\typewidth130mm%% 25pc
%\advance\trimheight2pc
%\advance\trimwidth2pc
%
\setlength\parindent{10pt}
\setlength\headheight{5\p@}%8pt size
\setlength\headsep   {19pt}%
\setlength\topskip  {7\p@}
\setlength\footskip{32pt}% 18pt + 2 line space on opening page
\setlength\maxdepth{4\p@}
\setlength\@maxdepth\maxdepth
\setlength\textwidth{\typewidth}
\setlength\textheight\typeheight
\advance\textheight-\headheight
\advance\textheight-\headsep
\setlength\normaltextheight{\textheight}
%\advance\textheight-2pc
%
\setlength\topmargin{.625in}%% 5/8"
\setlength\oddsidemargin{.435in}%% 1"
\evensidemargin\trimwidth
\advance\evensidemargin-\textwidth
\advance\evensidemargin-\oddsidemargin
%
\blindfoliodrop\trimheight
\advance\blindfoliodrop-\typeheight
\advance\blindfoliodrop-\topmargin
\advance\blindfoliodrop1pc
%
\setlength\marginparwidth {18pt}
\setlength\marginparsep{0.5pc}
%\setlength\marginparpush{5\p@}
\setlength\footnotesep {7pt}%12\p@}% \@plus 5\p@}%
\setlength{\skip\footins}{26\p@ \@plus 8\p@ minus8pt}%
\setlength\floatsep    {13\p@ \@plus 6\p@}
\setlength\textfloatsep{13\p@ \@plus 6\p@}
\setlength\intextsep   {13\p@ \@plus 6\p@}
\setlength\dblfloatsep    {12\p@ \@plus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@}
\setlength\@fptop{0\p@}
\setlength\@fpsep{18\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{2\p@ \@plus 1\p@}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{1}
\setlength\parskip{0\p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
%
\setlength\columnsep{12\p@}
%
\setlength\columnseprule{0\p@}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Title commands  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\articletype#1{\gdef\@articletype{{#1}}\uppercase}
\def\title#1{\gdef\@title{{#1}}}
\def\author#1{\gdef\@author{#1}}
\def\received#1{\gdef\@received{#1}}
\gdef\@received{Received 00 Month 201X; in final form 00 Month 201X}
%
\def\thanks#1{\begingroup
\def\protect{\noexpand\protect\noexpand}\xdef\@thanks{\@thanks%
  \protect\footnotetext[\the\c@footnote]{\thanksfont#1}}\endgroup}
%%
\newcommand\maketitle{\par
        \renewcommand\thefootnote{}%
  \begingroup
    \@maketitle%
    \thispagestyle{plain}%
  \endgroup
  \@thanks
  \let\@maketitle\relax
  \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\gdef\@articletype{}%
        \renewcommand\thefootnote{\arabic{footnote}}%
  \@afterheading}
%
\def\@maketitle{\thispagestyle{plain}
  \clearpage
  \null
  \bgroup
        \parindent0pt
  \vspace*{48pt}
    {\articletypefont{\@articletype}\par}%
    \vskip13pt
    {\titlefont\uppercase{\@title}\par}%
    \vskip13pt
    {\authorfont\@author\par}%
    \vskip5pt
    {\receivedfont{\rm(}\@received{\rm)}\par}%
    \vskip17pt
  \egroup}
%%
\def\affil#1{\par\vskip10pt{\affilfont#1\par}\vskip15pt}
%
%%%%%%%%%% abstract
%
\newenvironment{abstract}{%
        \abstractfont
  \noindent\ignorespaces}{%
        \par}\addvspace{32pt}
%
\newenvironment{keywords}{\global\keywordstrue%
        \par\addvspace{11pt}%
  \keywordfont
  \noindent{\itshape Keywords:\ }\ignorespaces
}{%
        \par\addvspace{32pt plus 4pt}\@afterheading}
%
\newif\ifkeywords
\newenvironment{classcode}{%
        \par\ifkeywords\addvspace{-20pt}\else\addvspace{11pt}\fi%
  \keywordfont
  \noindent{\itshape AMS Subject Classification:\ }\ignorespaces
}{%
        \par\addvspace{32pt plus 4pt}\@afterheading}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Title commands  %%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Sectioning commands  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thepart       {\arabic{part}}
\renewcommand\thesection       {\arabic{section}.}%!%
\renewcommand\thesubsection    {\thesection\arabic{subsection}}
%\renewcommand\thesubsubsection {\thesubsection.\arabic{subsubsection}}
\renewcommand\thesubsubsection      {\thesubsection.\@arabic\c@subsubsection}
\renewcommand\theparagraph     {\thesubsubsection.\arabic{paragraph}}
\renewcommand\thesubparagraph  {\theparagraph.\arabic{subparagraph}}
%
\newif\ifBhead
\Bheadfalse
\newif\ifChead
\Cheadfalse
%
\newcommand\section{\@startsection {section}{1}{\z@}{-26pt \@plus-4pt minus-2pt}{13pt}{\sectionfont}}
\newcommand\subsection{\global\Bheadfalse\@startsection{subsection}{2}{\z@}{-24pt \@plus-3pt minus-2pt}{7pt}{\subsectionfont}}
%\newcommand\subsubsection{\global\Cheadfalse\@startsection{subsubsection}{3}{\z@}{6pt \@plus2pt minus2pt}{6pt}{\subsubsectionfont}}
\newcommand\subsubsection{\global\Cheadfalse\@startsection{subsubsection}{3}{\z@}{24pt \@plus2pt minus2pt}{-6pt}{\subsubsectionfont}}
%\newcommand\paragraph{\@startsection{paragraph}{4}{-6pt}{12pt \@plus1pt minus1pt}{-6pt}{\paragraphfont}}%
\newcommand\paragraph{\global\Dheadfalse\@startsection{paragraph}{4}{\z@}{24pt \@plus2pt minus2pt}{-6pt}{\paragraphfont}}%
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}{3.25ex \@plus1ex}{-1em}{\reset@font\normalsize}}
%
\def\@startsection#1#2#3#4#5#6{%
  \if@noskipsec \leavevmode \fi
  \par
  \@tempskipa #4\relax
  \@afterindenttrue
  \ifdim \@tempskipa <\z@
    \@tempskipa -\@tempskipa \@afterindentfalse
  \fi
  \if@nobreak
    \ifnum#2=3
      \vskip4pt
    \fi
    \everypar{}%
  \else
    \addpenalty\@secpenalty\addvspace\@tempskipa
  \fi
  \@ifstar
    {\@ssect{#3}{#4}{#5}{#6}}%
    {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}
%
\newcommand\appendixname{Appendix}
\def\@sseccntformat#1{\csname the#1\endcsname\quad}
\def\@appseccntformat#1{\appendixname\ \csname the#1\endcsname:\ }
\def\@sect#1#2#3#4#5#6[#7]#8{\ifnum #2>\c@secnumdepth
     \let\@svsec\@empty\else
     \refstepcounter{#1}%
     \let\@@protect\protect
     \def\protect{\noexpand\protect\noexpand}%
     \ifnum#2>\@ne\edef\@svsec{\@sseccntformat{#1}}\else\edef\@svsec{\@seccntformat{#1}}\fi%
     \let\protect\@@protect\fi
     \@tempskipa #5\relax
      \ifdim \@tempskipa>\z@
        \begingroup #6\relax
          \ifnum#2=1
               \@hangfrom{\hskip #3\relax\@svsec}%
                         {\interlinepenalty \@M {#8}\par}%
          \else
                \ifnum#2=2
                    \@hangfrom{\hskip #3\relax{\em\@svsec}}%
                             {\interlinepenalty \@M #8\par}%
                \else
                        \@hangfrom{\hskip #3\relax\@svsec}%
                             {\interlinepenalty \@M #8\par}%
                \fi
         \fi
        \endgroup
%       \ifappendix
%           \csname #1mark\endcsname{Appendix \thesection: #7}
%           \markright{Appendix \thesection: #7}
%       \else
            \csname #1mark\endcsname{#7}
%       \fi
        \addcontentsline
         {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                      \protect\numberline{\csname the#1\endcsname}\fi
                    #7}%
       \else%
        \def\@svsechd{#6\hskip #3\relax  %%
                   {\em\@svsec} #8.\csname #1mark\endcsname
                      {#7}\addcontentsline
                           {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                           \protect\numberline{\csname the#1\endcsname}%
                                     \fi
                       #7}}\fi
     \@xsect{#5}}
%
%%\def\appendix{%
%%                                                      \setcounter{chapter}{0}
%%                                                      \setcounter{figure}{0}
%%                                                      \setcounter{table}{0}
%%                                                      \setcounter{equation}{0}
%%              }
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Sectioning commands  %%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\AA{\leavevmode\setbox0\hbox{h}\dimen@\ht0\advance\dimen@-1ex%
  \rlap{\raise.97\dimen@\hbox{\hskip2pt\char'27}}A}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Lists %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newdimen\LabelSep
\LabelSep.5em
\newskip\TopSep
\TopSep 6\p@ %\@plus2\p@% \@minus1\p@
%
\def\@listI{\leftmargin\leftmargini
            \listparindent\parindent
            \parsep \z@\labelsep\LabelSep
            \topsep\TopSep
            \itemsep0\p@}
%
\let\@listi\@listI
\@listi
%
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
                    \listparindent\parindent
                    \parsep \z@\labelsep\LabelSep
              \topsep 0pt%6\p@ \@plus2\p@ \@minus1\p@
              \parsep\z@\itemsep\z@}
\def\@listiii{\leftmargin\leftmarginiii
                    \listparindent\parindent
              \labelwidth\leftmarginiii
              \topsep    0pt
              \parsep    \z@
              \partopsep0pt
              \itemsep0pt}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
%
\setlength\leftmargini{3pc}
\setlength\leftmarginii{2.2em}
\setlength\leftmarginiii{1.87em}
\setlength\leftmarginiv{1.7em}
\setlength\leftmarginv{1em}
\setlength\leftmarginvi{1em}
\setlength\leftmargin{\leftmargini}
\setlength\listparindent{\parindent}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\renewcommand\theenumi{(\roman{enumi})}
\renewcommand\theenumii{\alph{enumii}}
\renewcommand\theenumiii{\roman{enumiii}}
\renewcommand\theenumiv{\Alph{enumiv}}
%!%\newcommand\labelenumi{{\bf\theenumi.}}
\newcommand\labelenumi{\theenumi}
\newcommand\labelenumii{\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{$\m@th\bullet$}
\newcommand\labelitemii{$\m@th\circ$}
\newcommand\labelitemiii{\normalfont\textendash}
\newcommand\labelitemiv{$\m@th\ast$}
%
\newbox\enumbox
\newdimen\enumwd
\def\enummax#1{\setbox\enumbox=\hbox{#1\hskip\labelsep}%
  \expandafter\global\csname leftmargin\romannumeral\the\@enumdepth\endcsname\wd\enumbox
}
%
\def\enumerate{\@ifnextchar[{\@enumerate}%
                                                            {\@enumerate[\csname label\@enumctr\endcsname]}}
%
\def\@enumerate[#1]{\listfont\ifnum \@enumdepth >3 \@toodeep\else
      \advance\@enumdepth \@ne\edef\@enumctr{enum\romannumeral\the\@enumdepth}%
      \setcounter{\@enumctr}{1}\enummax{#1}\list
      {\csname label\@enumctr\endcsname}{\usecounter
        {\@enumctr}\def\makelabel##1{\hss\llap{##1}}}\fi}
%
\let\Item\item
\newenvironment{enumeroman}{%
  \def\theenumi{\roman{enumi}}\def\theenumii{\roman{enumii}}%
  \def\labelenumi{(\theenumi)}\def\labelenumii{(\theenumii)}%
        \let\item\Item
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{sequence}{%
  \def\theenumi{\alph{enumi}}\def\theenumii{\alph{enumii}}%
  \def\labelenumi{(\theenumi)}\def\labelenumii{(\theenumii)}%
        \let\item\Item
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newdimen\unnummargin
\unnummargin12pt
%
\newenvironment{unnumlist}{%
        \let\item\Item
      \advance\@enumdepth \@ne
      \list{}{\leftmargin\unnummargin\itemindent-12pt\topsep6pt plus2pt
              \def\makelabel##1{\hss\llap{##1}}}%
}{%
  \endlist\advance\@enumdepth \m@ne}
%
\def\Itemize{%
  \ifnum \@itemdepth >3 \@toodeep\else \advance\@itemdepth \@ne
  \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
  \list{\csname\@itemitem\endcsname}%
       {\ifnum \@itemdepth>1\topsep0pt\fi\leftmargin22.5pt\rightmargin1pc\labelsep6pt\def\makelabel##1{\hss\llap{##1}}}\fi}
%
\def\endItemize{\endlist}
%
\newenvironment{quote}{%
        \par\addvspace{13pt plus2pt minus1pt}
  \extractfont\noindent\ignorespaces
}{%
        \par\addvspace{13pt plus2pt minus1pt}
  \@endparenv}
%
\renewenvironment{quote}{%
        \par\addvspace{6pt}\let\itemize\Itemize\let\enditemize\endItemize
  \extractfont\noindent\ignorespaces
}{%
        \par\addvspace{6pt}
  \@endparenv}
%
\let\extract\quote
\let\endextract\endquote
%
\def\itemize{%
  \ifnum \@itemdepth >3 \@toodeep\else \advance\@itemdepth \@ne
  \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
  \list{\csname\@itemitem\endcsname}%
       {\ifnum \@itemdepth>1\topsep0pt\fi\leftmargin24pt\labelsep6pt\def\makelabel##1{\hss\llap{##1}}}\fi}
%
\def\enditemize{\endlist}
%
\newenvironment{notes}{%
\par\let\listfont\footnotesize%
\begin{enumerate}
}{%
\end{enumerate}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Lists %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Floats %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\setcounter{topnumber}{4}
\renewcommand\topfraction{.9}
\setcounter{bottomnumber}{4}
\renewcommand\bottomfraction{.9}
\setcounter{totalnumber}{8}
\renewcommand\textfraction{.1}
\renewcommand\floatpagefraction{.91}
\setcounter{dbltopnumber}{5}
\renewcommand\dbltopfraction{.9}
\renewcommand\dblfloatpagefraction{.9}
%
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{7\p@}
\setlength\belowcaptionskip{\z@}
%
\def\FigName{figure}%
%
\long\def\@caption#1[#2]#3{\par\begingroup
    \@parboxrestore
    \normalsize
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}
%
\long\def\@makecaption#1#2{%
  \ifx\FigName\@captype
    \vskip5pt
    \setbox\tempbox\hbox{\figcaptionfont{\fignumfont#1}\hskip4pt#2}%
    \ifdim\wd\tempbox>\hsize
            %{\figcaptionfont\noindent{\fignumfont#1}\hskip7pt\ignorespaces#2\par}%
            {\figcaptionfont\noindent{\fignumfont#1}\hskip7pt\ignorespaces#2\par}
    \else
            \centerline{\box\tempbox}
    \fi
 \else
    {\tablecaptionfont
    {\tablenumfont#1}\hskip7pt\ignorespaces{#2}\par}%
   \vskip\belowcaptionskip
 \fi}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Figures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newcounter{figure}[chapter]
\renewcommand\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{Figure~\thefigure.}%
\newenvironment{figure}{\figcaptionfont\@float{figure}}{\end@float}
\newenvironment{figure*}{\figcaptionfont\@dblfloat{figure}}{\end@dblfloat}
%
\def\ArtDir{art/}%
\input epsf.sty
%
\def\ArtPiece{\@ifnextchar[{\@ArtPiece}{\@ArtPiece[]}}%
\def\@ArtPiece[#1]#2{\def\@tempa{#1}%
                                                                                    \hbox{\ifx\@tempa\@empty\else\epsfscale#1\fi
                                            \noindent{\epsfbox{\ArtDir#2}}}}%
%
\newdimen\figheight
\newdimen\figwidth
%
\let\figformat\centerline
%
\def\figurebox#1#2#3#4{%
  \global\figheight#1\global\figwidth#2
  \def\@tempa{#4}%
  \leavevmode
  \ifx\@tempa\empty
    \figformat{\figbox}%
  \else
    \figformat{\ArtPiece[#3]{#4}}%
  \fi\par}
%
\def\figbox{\hbox{\vbox{\hsize\figwidth
                                \hrule                                                                                                     \hrule
                                  \hbox to\figwidth{\vrule\hss
                                  \vbox to \figheight{\vfill}%
                                                    \vrule}\hrule}}}%
%
\def\figformat#1{\footnotesize#1}
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Figures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Tables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newcounter{table}
\newcounter{newtable}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{Table~\thetable.}
\newenvironment{table}
               {%\refstepcounter{newtable}\def\@currentlabel{\p@table\thenewtable}%
               %\refstepcounter{newtable}\def\@currentlabel{\string\thetable}%
               \@float{table}}
               {\vskip5pt\end@float}
\newenvironment{table*}
               {%\refstepcounter{newtable}\def\@currentlabel{\p@table\thenewtable}%
               %\def\@currentlabel{\noexpand\thetable}%
               \@dblfloat{table}}
               {\end@dblfloat}

%
\newdimen\tabledim
%
\long\def\tbl#1#2{%
 \setbox\tempbox\hbox{\tablefont #2}%
 \tabledim\hsize\advance\tabledim by -\wd\tempbox
    \global\divide\tabledim\tw@
 \caption{#1}
    \centerline{\box\tempbox}
  }%
%
\newenvironment{tabnote}{%
\par\vskip5pt\tabnotefont
\@ifnextchar[{\@tabnote}{\@tabnote[]}}{%
\par\vskip-5pt}
\def\@tabnote[#1]{\def\@Tempa{#1}\leftskip\tabledim\rightskip\leftskip%\hspace*{9pt}%
\ifx\@Tempa\@empty\else{\itshape #1:}\ \fi\ignorespaces}
%
\def\Hline{%
  \noalign{\ifnum0=`}\fi\hrule \@height 2\arrayrulewidth \futurelet
   \@tempa\@xhline}
%
\def\x{@{\extracolsep{\fill}}}
\def\toprule{\\[-5.5pt]\Hline\\[-3.5pt]}
\def\colrule{\\[-7.5pt]\hline\\[-5pt]}
\def\botrule{\\[-7.7pt]\Hline}
\def\crule#1{\\[-9.5pt]#1\\[-2.5pt]}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Tables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Math %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\biggg#1{{\hbox{$\left#1\vbox to20.5\p@{}\right.\n@space$}}}
\def\Biggg#1{{\hbox{$\left#1\vbox to23.5\p@{}\right.\n@space$}}}
%
\setlength\arraycolsep{1.5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.5\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset{equation}{chapter}
\renewcommand\theequation{\arabic{equation}}%
%\def\@eqnnum{{\reset@font\rmfamily [\theequation]\hskip-1.1pt}}
%
\def\bstrut{\vrule width0pt depth6pt}
\def\tstrut{\vrule width0pt height10pt}
\jot=6pt
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Math %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\appendices{\appendix\global\appendixtrue}
\newcommand{\appendix}{%
   \global\appendixtrue
   \let\@seccntformat\@appseccntformat
   \setcounter{equation}{0}\renewcommand\theequation{\thesection\arabic{equation}}%
   \setcounter{section}{0}\renewcommand\thesection       {\Alph{section}}%!%
   \setcounter{subsection}{0}\renewcommand\thesubsection       {\thesection.\arabic{subsection}}%!%
   \setcounter{table}{0}\renewcommand\thetable{\thesection\@arabic\c@table}%!%
   \setcounter{figure}{0}\renewcommand\thefigure{\thesection\@arabic\c@figure}%!%
%   \setcounter{theorem}{0}\renewcommand\theremark{{\itshape\thesection\arabic{remark}}\reset@font}
%   \renewcommand\theproposition{\thesection.\arabic{theorem}}
%   \renewcommand\thecorollary{\thesection.\arabic{theorem}}
%   \renewcommand\thedefinition{\thesection.\arabic{theorem}}
%   \renewcommand\thelemma{\thesection.\arabic{theorem}}
%   \renewcommand\thetheorem{\thesection.\arabic{theorem}}
%   \renewcommand\thealgorithm{{\itshape\thesection.\arabic{algorithm}}}
   \@addtoreset{equation}{section}
   \@addtoreset{table}{section}
   \@addtoreset{figure}{section}
}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Begin Footnote %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\renewcommand\footnoterule{\kern2pt\hrule width 32.65pc height.25pt\kern4pt}%
\renewcommand\thefootnote{\fnsymbol{footnote}}
\@addtoreset{footnote}{page}
%
\def\@makefnmark{\hbox{$^{\@thefnmark}\m@th$}}%
\long\def\@makefntext#1{%
    %\hspace*{12pt}
    \@makefnmark\ignorespaces#1\par}%
%
\long\def\@makefntext#1{\parindent12pt%
    \leavevmode\@makefnmark\ignorespaces#1\par}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Footnote %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Bibliography Section   %%%%%%%%%%%%%%%%%%
%
\newdimen\bibindent
\newdimen\bibleftmargin
\newdimen\bibitemsep
\newdimen\bibparsep
\newdimen\bibtext
\newdimen\biblabelsep
\newdimen\bibleftmargini
%
%%%%% TRUE FOR CHAPTER TITLE AND FALSE FOR SECTION TITLE %%%%%%%%
\newif\ifbibchapter
\global\bibchaptertrue
%%%%%%%% Unnumbered References %%%%%%%%%%%
\setlength\bibleftmargin  {18pt}
\setlength\bibitemsep  {0pt}
\setlength\bibparsep  {0pt}
%%%%%%%% Numbered Within Square Bracket %%%%%%%%%%%
\newif\ifnumsqure
\global\numsquretrue
\setlength\biblabelsep  {5pt}
\setlength\bibleftmargini  {5.75pt}
%%%%%%%% Numbered With Dot %%%%%%%%%%%%%%%
%\setlength\bibtext  {18pt}
%
\newenvironment{thebibliography}[1]
     {\bibliofont%
     \def\@tempa{#1}%
    \ifbibchapter
     \ifnum\@tempa=1
        \section*{Reference}%
     \else
        \section*{References}%
     \fi
        \vspace*{-10pt}%
    \fi%
     \ifx\@tempa\@empty
                            \list{}%
           {\labelwidth0pt\labelsep0pt
           \leftmargin\bibleftmargin%12
           \itemindent-\bibleftmargin
           \itemsep\bibitemsep
           \parsep\bibparsep
           \usecounter{enumiv}%
           \let\p@enumiv\@empty
           \renewcommand\theenumiv{\arabic{enumiv}}}%
      \else
          \setbox\tempbox\hbox{\@tempa.}
          \tempdimen\wd\tempbox
          \ifnumsqure
          \else
          \def\@biblabel##1{{\hbox to \tempdimen{\hfill##1.}}}\fi%full point after all level heading numbers
          %  \def\@biblabel##1{{\hbox to \tempdimen{\hfill##1}}}\fi%full point after only section level heading numbers
           \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
           \labelsep3pt\leftmargin\labelsep
           \advance\leftmargin\bibtext
               \advance\leftmargin\labelwidth
          \ifnumsqure
%               \advance\leftmargin\labelwidth
              \fi
           \itemindent0pt
           \itemsep\bibitemsep
           \parsep\bibparsep
           \usecounter{enumiv}%
           \let\p@enumiv\@empty
           \renewcommand\theenumiv{\arabic{enumiv}}}%
     \fi
     \sloppy\clubpenalty4000\widowpenalty4000%
     \sfcode`\.=\@m}
     {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}%
     \endlist}
\newcommand\newblock{}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End references %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Page styles  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\mark{{}{}}
%
\def\endpage#1{\gdef\@endpage{#1}}
\endpage{}%
\def\jname#1{\gdef\@jname{#1}}
\jname{Remote Sensing Letters}
\def\jvol#1{\gdef\@jvol{#1}}
\gdef\@jvol{00}
\def\articletype#1{\gdef\@articletype{#1}}
\gdef\@articletype{\ }
\def\jnum#1{\gdef\@jnum{#1}}
\gdef\@jnum{00}
\def\jmonth#1{\gdef\@jmonth{#1}}
\gdef\@jmonth{Month}
\def\jyear#1{\gdef\@jyear{#1}}
\gdef\@jyear{201X}
%
\def\ps@plain{%
     \let\@mkboth\@gobbletwo
     \let\@oddfoot\@evenfoot
     \def\@oddhead{\hbox to \textwidth{{\small\begin{tabular}[t]{@{}l@{}}
                                                                                     \\ %[14.9pt]
                          {To appear in \itshape \@jname}\\
                          Vol. \@jvol, No. \@jnum, \ifx\@jmonth\empty\else\@jmonth\ \fi\@jyear,  \thepage--\@endpage\\
                          \end{tabular}}%
                          \hfill%
                          }}%
     \let\@evenhead\@oddhead
}
%
\def\markboth#1#2{%
  \begingroup
    \let\label\relax \let\index\relax \let\glossary\relax
    \let\it\rm\let\textit\textup%
    \unrestored@protected@xdef\@themark {{#1}{#2}}%
    \@temptokena \expandafter{\@themark}%
    \mark{\the\@temptokena}%
  \endgroup
  \if@nobreak\ifvmode\nobreak\fi\fi}
%\def\markboth#1#2{\leftmark{#1}\rightmark{#2}}
%\def\leftmark#1{\gdef\@leftmark{\uppercase{#1}}}
%\def\rightmark#1{\gdef\@rightmark{\uppercase{#1}}}
%\def\leftmark#1{\gdef\@leftmark{{\it#1}}}
%\def\rightmark#1{\gdef\@rightmark{{\it#1}}}

\def\ps@headings{%
     \let\@oddfoot\@empty\let\@evenfoot\@empty
     \def\@oddhead{\hfil{\rhfont\rightmark}\hfil\llap{\foliofont\thepage}}%
     \def\@evenhead{\rlap{\foliofont\thepage}\hfil{\rhfont\leftmark}\hfil}%
     \let\@mkboth\markboth
     \def\sectionmark##1{}}
%
\def\ps@empty{%
            \let\@mkboth\@gobbletwo
         \def\@evenhead{}%
         \def\@oddhead{}
         \def\@oddfoot{\hfill\lower\blindfoliodrop\hbox{\thepage}\hfill}
   \let\@evenfoot\@oddfoot}
%
\def\ps@Empty{%
            \let\@mkboth\@gobbletwo
         \def\@evenhead{}%
         \def\@oddhead{}
         \def\@oddfoot{\hfill\lower\blindfoliodrop\hbox{\thepage}}
   \def\@evenfoot{\lower\blindfoliodrop\hbox{\thepage}\hfill}
   }
%




%  ****************************************
%  *            PAGE LAYOUT               *
%  ****************************************
%
% SIDE MARGINS:
\if@twocolumn
  \setlength\oddsidemargin{4.5pc}
  \setlength\evensidemargin{4.5pc}
\else
  \setlength\oddsidemargin{7.5pc}
  \setlength\evensidemargin{7.5pc}
\fi
\setlength\marginparwidth{4pc}
\setlength\marginparsep{0.5pc}

% VERTICAL SPACING:
%\if@twocolumn
  \setlength\topmargin{-2pc}
%\else
  \setlength\topmargin{\z@}
%\fi
\setlength{\headheight}{14pt}
\setlength{\headsep}   {15pt}
\setlength{\topskip}   {9pt}
\setlength{\footskip}  {22pt}
%
% DIMENSION OF TEXT:
%
\setlength\textwidth{32.65pc}
\setlength\textheight{670pt}

%
%\if@landscape
 %\setlength\textwidth{\textheight}
 %\setlength\textheight{\textwidth}
%\fi
%\if@referee
 %\setlength\textwidth{39pc}
%\fi
\setlength\columnsep{2pc}
\setlength\columnseprule{0pt}

% FOOTNOTES:
\setlength\footnotesep{6pt}
\setlength\skip{\footins 19.5pt plus 12pt minus 1pt}

% FLOATS:
\setlength\floatsep{ 12pt plus 5.5pt minus 1pt}
\setlength\textfloatsep{ 12pt plus 7.5pt}
\setlength\intextsep{ 12pt plus 5.5pt minus 2pt}
\setlength\dblfloatsep{ 12pt plus 5.5pt minus 2pt }
\setlength\dbltextfloatsep{ 15pt plus 4.5pt minus 3pt}
\setlength\@fptop{ 0pt plus 0fil}
\setlength\@fpsep{ 12pt plus 0fil }
\setlength\@fpbot{ 0pt plus 0fil }
\setlength\@dblfptop{ 0pt plus 0fil}
\setlength\@dblfpsep{ 12pt plus 0fil}
\setlength\@dblfpbot{ 0pt plus 0fil}
\setlength\marginparpush{ 5pt }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Page styles  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Trimmarks  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newcommand\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
%
\ifprinter
  \def\draftnote{}
  \def\floatqtoa{}
  \def\Qauthor#1{}
\else
   \def\draftnote{{\footnotesize\today\qquad\jobtag\qquad\jobname}\hfill}%
%%   \def\draftnote{\vbox to 0pt{\vskip-12pt%
%%   \hbox{\ \footnotesize\TeXversion}
%%   }\hbox{\ \footnotesize \jobtag\qquad\jobname\qquad\today\qquad\currenttime\hfil}}
   \def\floatqtoa#1{\vbox to 0pt{\vskip-20pt%\hskip\textwidth
   \llap{\vbox{\hsize6pc\bf \footnotesize\raggedright#1}}}\vskip-12pt}%
%%
   \def\Qauthor#1{\marginpar{\footnotesize\bf\raggedright #1}}
\fi
   \let\qtoa\Qauthor

\def\twocoldraftrule{\vrule width\draftrule\hskip\columnsep\vrule width\draftrule\hfill}
%
%
\newdimen\drafttextwidth
\drafttextwidth\textwidth
\def\twocoldraftrule{}%
%
\setlength\typeheight\textheight
\advance\typeheight\headheight
\advance\typeheight\headsep

\setlength\typewidth{\textwidth}
\global\newdimen \trimrule
 \trimrule.1pt
%
\def\trimmarks{%
  \vbox to 0pt{\vskip-17pt
  \draftnote\offinterlineskip
  \parindent0pt
  \leftskip0pt\rightskip0pt}%
  \ifdraft
    \vbox to 0pt{\hsize\trimwidth\offinterlineskip
    \parindent0pt\leftskip0pt\rightskip0pt
    \vbox to \trimheight{\offinterlineskip\parindent0pt
    \hbox to \trimwidth{\vbox to 2pc{\vskip-3pc\hbox{\vrule height2pc width\trimrule}}\raisebox{2pc}{\hbox{\hskip-3pc\vrule width2pc height\trimrule}}\hfill
      \raisebox{2pc}{\vrule width2pc height\trimrule\hskip-3.25pc}
      \vbox to 2pc{\vskip-3pc\hbox{\vrule height2pc width\trimrule}}%
    }\vfill
    \hbox to \trimwidth{\hbox{\hskip-3pc\vrule height\trimrule width2pc}\vbox to 3pc{\vspace*{4pc}\hbox{\hskip1pc\vrule width\trimrule height2pc}}\hfill
    \vbox to 3pc{\vskip4pc\hbox{\vrule height2pc width\trimrule}}\rlap{\hskip1pc\vrule width2pc height\trimrule}}}}%
  \else
   \trimrule.0pt
    \vbox to 0pt{\hsize\trimwidth\offinterlineskip
    \parindent0pt\leftskip0pt\rightskip0pt
    \vbox to \trimheight{\offinterlineskip\parindent0pt
    \hbox to \trimwidth{\vbox to 2pc{\vskip-3pc\hbox{\vrule height2pc width\trimrule}}\raisebox{2pc}{\hbox{\hskip-3pc\vrule width2pc height\trimrule}}\hfill
      \raisebox{2pc}{\vrule width2pc height\trimrule\hskip-3.25pc}
      \vbox to 2pc{\vskip-3pc\hbox{\vrule height2pc width\trimrule}}%
    }\vfill
    \hbox to \trimwidth{\hbox{\hskip-3pc\vrule height\trimrule width2pc}\vbox to 3pc{\vspace*{4pc}\hbox{\hskip1pc\vrule width\trimrule height2pc}}\hfill
    \vbox to 3pc{\vskip4pc\hbox{\vrule height2pc width\trimrule}}\rlap{\hskip1pc\vrule width2pc height\trimrule}}}}%
  \fi
%
\insidedraftrules}
%
\def\insidedraftrules{%
\vbox to 0pt{%
  \offinterlineskip\parindent0pt
  \vskip \topmargin
  \@tempdima\typeheight
  \moveright\@themargin
      \ifodd\c@page
         \vbox to\@tempdima{\hrule height\draftrule
         \vbox to 0pt{\vskip\headheight\vskip\headsep%\vskip-6pt
                      \noindent\hbox{\vrule height\draftrule width\textwidth}}%26pc
         \hbox to \typewidth{\vrule width\draftrule\hskip\textwidth
           \vrule height\@tempdima width\draftrule\hfill\vrule height\@tempdima width\draftrule}%
           \hrule height\draftrule}%
      \else
         \hbox to \textwidth{\hss\hbox to \typewidth{%
         \vbox to \@tempdima{\hrule height\draftrule
         \vbox to 0pt{\vskip\headheight\vskip\headsep%\vskip-6pt
                \hbox{\vrule height\draftrule width\textwidth}}%
         \hbox to \typewidth{\vrule width\draftrule
         \hfill\vrule height\@tempdima width\draftrule%%\hskip\textwidth\vrule height\@tempdima width\draftrule
}%
         \hrule height\draftrule}}}%
      \fi}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Version Control  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%\input VerControl
%
\def\document{\endgroup
  \ifx\@unusedoptionlist\@empty\else
    \@latex@warning@no@line{Unused global option(s):^^J%
            \@spaces[\@unusedoptionlist]}%
  \fi
  \@colht\textheight
  \@colroom\textheight \vsize\textheight
  \columnwidth\textwidth
  \@clubpenalty\clubpenalty
  \begingroup\@floatplacement\@dblfloatplacement
    \makeatletter\let\@writefile\@gobbletwo
    \global \let \@multiplelabels \relax
    \@input{\jobname.aux}%
  \endgroup
  \if@filesw
    \immediate\openout\@mainaux\jobname.aux
    \immediate\write\@mainaux{\relax}%
  \fi
  \process@table
  \let\glb@currsize\@empty  %% Force math initialization.
  \normalsize
  \everypar{}%
  \ifx\normalsfcodes\@empty
    \ifnum\sfcode`\.=\@m
      \let\normalsfcodes\frenchspacing
    \else
      \let\normalsfcodes\nonfrenchspacing
    \fi
  \fi
  \@noskipsecfalse
  \let \@refundefined \relax
  \let\AtBeginDocument\@firstofone
  \@begindocumenthook
  \ifdim\topskip<1sp\global\topskip 1sp\relax\fi
  \global\@maxdepth\maxdepth
  \global\let\@begindocumenthook\@undefined
  \ifx\@listfiles\@undefined
    \global\let\@filelist\relax
    \global\let\@addtofilelist\@gobble
  \fi
  \gdef\do##1{\global\let ##1\@notprerr}%
  \@preamblecmds
  \global\let \@nodocument \relax
%%  \global\let\do\noexpand\VerCtrl
  \ignorespaces}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Version Control  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Output Routine %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newif\ifspreadlong
\spreadlongfalse
\newdimen\varypageheight
\varypageheight0pt
%
\def\spreadlong#1{%
   \global\varypageheight#1
   \ifodd\c@page\else
     \spreadlongtrue\enlargethispage{#1}%
   \fi}%
%
\def\leaflong#1{\enlargethispage{#1}}
%
\def\@outputpage{%
\let\firstmark\botmark
\begingroup           % the \endgroup is put in by \aftergroup
  \let \protect \noexpand
  \@resetactivechars
  \@parboxrestore
  \shipout \vbox{%
    \set@typeset@protect
    \aftergroup \endgroup
    \aftergroup \set@typeset@protect
                                % correct? or just restore by ending
                                % the group?
  \if@specialpage
    \global\@specialpagefalse\@nameuse{ps@\@specialstyle}%
  \fi
  \if@twoside
    \ifodd\count\z@ \let\@thehead\@oddhead \let\@thefoot\@oddfoot
         \let\@themargin\oddsidemargin
    \else \let\@thehead\@evenhead
       \let\@thefoot\@evenfoot \let\@themargin\evensidemargin
    \fi
  \fi
  \reset@font
  \normalsize
  \normalsfcodes
  \let\label\@gobble
  \let\index\@gobble
  \let\glossary\@gobble
  \baselineskip\z@skip \lineskip\z@skip \lineskiplimit\z@
    \@begindvi\trimmarks
    \vskip \topmargin
    \moveright\@themargin \vbox {%
      \setbox\@tempboxa \vbox to\headheight{%
        \vfil
        \color@hbox
          \normalcolor
          \hb@xt@\textwidth{\@thehead}%
        \color@endbox
        }%
      \dp\@tempboxa \z@
      \box\@tempboxa
      \vskip \headsep
      \box\@outputbox
      \baselineskip \footskip
      \color@hbox
        \normalcolor
        \hb@xt@\textwidth{\@thefoot}%
      \color@endbox
      }%
    }%
  \global \@colht \textheight
  %      \endgroup
  \stepcounter{page}%
   \ifspreadlong\enlargethispage{\varypageheight}\global\spreadlongfalse\varypageheight0pt\fi
%  \let\firstmark\botmark
}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Output Routine  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\gray{\special{color CMYK 0 0 0 0.5}}
\def\@questionmark{\vbox to 0pt{\vskip13pc\hskip-5pc
                  \hbox to \textwidth{\special{color push}\gray\fontsize{570}{570}\selectfont ?
                  \special{color pop}\hss}}}
\def\questionmark#1{\xdef\@questionmark{#1}}%
%
\def\enddocument{%
   \@enddocumenthook
   \@checkend{document}%
        \immediate\write\@mainaux{\string\endpage{\thepage}}
%%
   \clearpage
   \begingroup
     \if@filesw
       \immediate\write\@mainaux{\string\questionmark{}}%
       \immediate\closeout\@mainaux
       \let\@setckpt\@gobbletwo
       \let\@newl@bel\@testdef
       \@tempswafalse
       \makeatletter \input\jobname.aux
     \fi
     \@dofilelist
     \ifdim \font@submax >\fontsubfuzz\relax
       \@font@warning{Size substitutions with differences\MessageBreak
                  up to \font@submax\space have occurred.\@gobbletwo}%
     \fi
     \@defaultsubs
     \@refundefined
     \if@filesw
       \ifx \@multiplelabels \relax
         \if@tempswa
           \@latex@warning@no@line{Label(s) may have changed.
               Rerun to get cross-references right}%
         \fi
       \else
         \@multiplelabels
       \fi
     \fi
   \endgroup
%   \gdef\endpage{\thepage}
   \deadcycles\z@\@@end}
%
\def\longpage{\enlargethispage{\baselineskip}}
\def\shortpage{\enlargethispage{-\baselineskip}}
%%
%%%%%%%%%%%%%%%%%%%%%%%% Initialization  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
\pagestyle{empty}
\pagenumbering{arabic}      % Arabic page numbers
\frenchspacing
\sloppy
\onecolumn
\ifprinter
\voffset-54pt
\hoffset-1in
\else
\voffset-54pt
\hoffset-1in
\fi
\usepackage{amsbsy,amsfonts,amsmath,amssymb,amsthm,enumerate,rotating}
\usepackage[it]{modsubfig}
%\usepackage[flushleft]{caption}

\usepackage[authoryear]{natbib}
\let\bibfont\relax
\def\bibfont{\fontsize{10}{12}\selectfont}%
\bibpunct{(}{)}{,}{a}{}{,}

\endinput
