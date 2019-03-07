\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{eqconf}[2019/02/20 Latex Class for Earthquake Conference]

%%% Language Variables
\newif\if@EngLang
\@EngLangfalse
\newif\if@TurLang
\@TurLangfalse

%%% Options to Feed into Packages
\DeclareOption{english}{\PassOptionsToClass{english}{article} \@EngLangtrue}
\DeclareOption{turkish}{\PassOptionsToClass{turkish}{article} \@TurLangtrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[12pt, a4paper]{article}

%%% Packages
\usepackage{mathptmx}
\renewcommand{\familydefault}{\rmdefault} 
\usepackage{graphicx}
\usepackage[%
verbose,
tmargin=30mm,
headsep=7.75mm,
headheight=15mm,
bmargin=20mm,
lmargin=20mm,
rmargin=20mm,
footskip=10mm]{geometry}


%%% Header Settings
\usepackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}

\if@EngLang
	\def\headconf{\textbf{\textit{\small 5th International Conference on Earthquake Engineering and Seismology\\8-11 October 2019 – METU – Ankara / TURKEY}}}
\fi
\if@TurLang
	\def\headconf{\textbf{\textit{\small 5. Uluslararası Deprem Mühendisliği ve Sismoloji 
			Konferansı\\8-11 Ekim 2019 – ODTÜ – ANKARA}}}
\fi

\lhead{\headconf}
\chead{}
\rhead{\includegraphics[width=43.64mm]{header.png}\vspace{1pt}}

\fancypagestyle{firststyle}{
	\lhead{\headconf}
	\chead{}
	\rhead{\includegraphics[width=43.64mm]{header.png}}}



%%% Placement of the Title Page Items
\def\@maketitle{%
	\newpage
	\null
	\vspace{-1.1cm}
	\begin{center}%
		\let \footnote \thanks
		{\large \bfseries \@title \par}%
		\vskip 0.7em%
		{\lineskip .5em%
			\begin{tabular}[t]{c}%
				{\bfseries \@author}
			\end{tabular}\par}%
		\vskip 1em%
		{\large \@date}%
	\end{center}%
	\par
	\vskip -0.5em}

\def\fixturkishbug{%
	\if@TurLang
		\shorthandoff{=}
	\fi}




%%% Abstract Settings
\newcommand\abstrname{ÖZET:}
\newcommand\absengname{ABSTRACT:}
\newenvironment{ozet}
	{{\bfseries \abstrname} \par \vspace{1.0ex \@plus .2ex}\vspace{\z@}}


\renewenvironment{abstract}{\vspace{2.0ex \@plus .2ex}
	{{\bfseries \absengname} \par \vspace{1.0ex \@plus .2ex}\vspace{\z@}}}

\newenvironment{keywords}{{\bfseries KEYWORDS:} }{\vspace{1em}}
\newenvironment{anahtarkelimeler}{{\bfseries ANAHTAR KELİMELER:} }{\vspace{1em}}

%%Authors
\newcommand{\authorname}[2]{\bfseries #2\textsuperscript{#1}}
\newcommand{\affils}[2]{{\normalsize \bfseries \textsuperscript{#1}} \small {\itshape #2}}
\newcommand{\email}{\itshape Email: }



%%% Section Header Settings
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.25em}
\renewcommand\thesection {\@arabic\c@section.}
\renewcommand\thesubsection {\thesection\@arabic\c@subsection.}
\renewcommand\thesubsubsection{\thesubsection\@arabic\c@subsubsection.}
\renewcommand\section{\@startsection {section}{1}{\z@}%
	{-2.5ex \@plus -1ex \@minus -.2ex}%
	{1.0ex \@plus.2ex}%
	{\normalfont\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	{-2.0ex\@plus -1ex \@minus -.2ex}%
	{1.0ex \@plus .2ex}%
	{\normalfont\itshape\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
	{-2.00ex\@plus -1ex \@minus -.2ex}%
	{1.0ex \@plus .2ex}%
	{\normalfont\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
	{3.25ex \@plus1ex \@minus .2ex}%
	{-1em}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
	{3.25ex \@plus1ex \@minus .2ex}%
	{-1em}%
	{\normalfont\normalsize\bfseries}}


%%% Page Setup if Geometry Package is Not Used
%\addtolength{\oddsidemargin}{-46.3pt}
%\addtolength{\topmargin}{-55.5pt}
%\setlength{\headheight}{27.50pt}
%\setlength{\headsep}{21.54pt}
%\setlength{\textwidth}{170mm}
%\setlength{\textheight}{22cm}
%\setcounter{secnumdepth}{0}


%%%Figures and Tables
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
	\vskip\abovecaptionskip
	\sbox\@tempboxa{{\bfseries #1.} #2}%
	\ifdim \wd\@tempboxa >\hsize
	{\bfseries #1.} #2\par
	\else
	\global \@minipagefalse
	\hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
	\fi
	\vskip\belowcaptionskip}