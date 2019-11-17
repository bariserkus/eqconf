\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{eqengconf}[2019/02/20 Latex Class for Earthquake Engineering Conference]

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

\LoadClass[11pt, a4paper]{article}

%%% Packages
\usepackage{mathptmx}
\renewcommand{\familydefault}{\rmdefault} 
\usepackage{graphicx}
\usepackage{xcolor}
\definecolor{eqblue}{RGB}{27, 117, 188}
\definecolor{eqred}{RGB}{190, 30, 45}

\usepackage[%
verbose,
tmargin=30mm,
headsep=10.5mm,
headheight=15mm,
bmargin=20mm,
lmargin=20mm,
rmargin=20mm,
footskip=10mm]{geometry}


%%% Header Settings
\usepackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyheadoffset[LR]{1cm}

%\if@EngLang
%	\def\headconf{\textbf{\textit{\normalsize 5th International Conference on
%           Earthquake Engineering and Seismology\\8-11 October 2019 – METU – Ankara / TURKEY}}}
%\fi
%\if@TurLang
%	\def\headconf{\textbf{\textit{\normalsize 5. Uluslararası Deprem Mühendisliği ve Sismoloji 
%			Konferansı\\8-11 Ekim 2019 – ODTÜ – ANKARA}}}
%\fi

% New template uses English title of the conference for both Turkish and English papers
\def\headconf{\textbf{\normalsize \textcolor{eqblue}{5. International Conference on
        Earthquake Engineering and Seismology (5ICEES)}\\\textcolor{eqred}{8-11 OCTOBER 2019, METU ANKARA TURKEY}}}

\lhead{\headconf}
\chead{}
\rhead{\raisebox{-0.2cm}{\includegraphics[width=43.64mm]{header.png}}}

\fancypagestyle{firststyle}{
	\lhead{\headconf}
	\chead{}
	%\rhead{\includegraphics[width=43.64mm]{header_new.png}}}
	\rhead{\raisebox{-0.2cm}{\includegraphics[width=43.64mm]{header.png}}}}

%\makebox[0pt][l]{}

%%% Placement of the Title Page Items
\def\@maketitle{%
	\newpage
	\let \footnote \thanks
	{\centering \Large \bfseries \@title \par}
	\vspace{1.1em}
	{\centering \large \@author \par}
	\vspace{1.1em}
	{\centering \small \@date \par}
	\vspace{1.1em}
}%

\def\fixturkishbug{%
	\if@TurLang
		\shorthandoff{=}
	\fi}




%%% Abstract Settings
\newcommand\abstrname{ÖZET:}
\newcommand\absengname{ABSTRACT:}
\newenvironment{ozeteq}
	{\vspace{0.0ex \@plus .2ex}{\noindent \bfseries \abstrname} \par \vspace{1.0em} \noindent\ignorespaces}
	{\vspace{1.0em \@plus .2ex \@minus .1ex}\vspace{\z@}}

\newenvironment{abstracteq}
	{\vspace{0.0ex \@plus .2ex}{\noindent \bfseries \absengname} \par \vspace{1.0em} \noindent\ignorespaces}
	{\vspace{1.0em \@plus .2ex \@minus .1ex}\vspace{\z@}}

\newenvironment{keywords}{{\noindent \bfseries KEYWORDS:} }{\vspace{0em}}
\newenvironment{anahtarkelimeler}{{\noindent \bfseries ANAHTAR KELİMELER:} }{\vspace{2.2em}}



%%Authors
\newcommand{\authorname}[2]{\bfseries #2{\small \textsuperscript{#1}}}
\newcommand{\affils}[2]{{\bfseries \textsuperscript{#1}}{\itshape #2}}
\newcommand{\email}{\itshape Email: }
\newcommand{\titlesecondary}[1]{\vspace{0em} {\centering \bfseries \Large #1 \par \vspace{1em}} }

% Applies to KOMA Script
%%\usepackage{xpatch}
%%\xapptocmd{\sectionlinesformat}{\vspace*{-2\parskip}}{}{}

%%% Section Header Settings
%\setlength{\parindent}{0pt}
\setlength{\parskip}{0.0em}
\renewcommand*{\@seccntformat}[1]{\csname the#1\endcsname\hspace{1ex}}
\renewcommand\thesection {\@arabic\c@section.}
\renewcommand\thesubsection {\thesection\@arabic\c@subsection.}
\renewcommand\thesubsubsection{\thesubsection\@arabic\c@subsubsection.}
\renewcommand\section{\@startsection {section}{1}{\z@}%
	{-2.2em \@plus -1ex \@minus -.2ex}%
	{1.0em \@plus .2ex}%
	{\normalfont\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	{-1.0em\@plus -1ex \@minus -.2ex}%
	{0.01ex \@plus 0.2ex}%
	{\normalfont\itshape\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
	{-1.0em\@plus -1ex \@minus -.2ex}%
	{0.01ex \@plus 0.2ex}%
	{\normalfont\itshape}}
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
	\sbox\@tempboxa{\centering {\bfseries #1.} #2}%
	\ifdim \wd\@tempboxa >\hsize
	\centering {\bfseries #1.} #2\par
	\else
	\global \@minipagefalse
	\hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
	\fi
	\vskip\belowcaptionskip}