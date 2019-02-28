\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{eqconf}[2019/02/20 Latex Class for Earthquake Conference]
 
\newcommand{\headlinecolor}{\normalcolor}
\LoadClass[12pt,a4paper]{article}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\usepackage{mathptmx}
\renewcommand{\familydefault}{\rmdefault} 
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{graphicx}
\usepackage[%
verbose,
tmargin=30mm,
headsep=7.75mm,
headheight=15mm,
bmargin=25mm,
lmargin=20mm,
rmargin=20mm,
footskip=10mm]{geometry}


\usepackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\lhead{\textbf{\textit{\small 5. Uluslararası Deprem Mühendisliği ve Sismoloji 
Konferansı\\8-11 Ekim 2019 – ODTÜ – ANKARA}}}
\chead{}
\rhead{\includegraphics[width=43.64mm]{header.png}\vspace{1pt}}

\fancypagestyle{firststyle}
{
	\lhead{\textbf{\textit{\small 5. Uluslararası Deprem Mühendisliği ve 
	Sismoloji 
	Konferansı\\8-11 Ekim 2019 – ODTÜ – ANKARA}}}
	\chead{}
	\rhead{\includegraphics[width=43.64mm]{header.png}}
}

%\usepackage{titling}
%\setlength{\droptitle}{-18.45mm}
%\pretitle{\begin{center} \large \bf }
%\posttitle{\par\end{center}}
%\preauthor{\begin{center} \begin{tabular}[t]{c}}
%\postauthor{\end{tabular} \par\end{center}}


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
				\@author
			\end{tabular}\par}%
		\vskip 1em%
		{\large \@date}%
	\end{center}%
	\par
	\vskip -0.5em}

\newcommand\abstrname{ÖZET:}
\newcommand\absengname{ABSTRACT:}
\newenvironment{ozet}{
	{\bfseries \abstrname \vspace{1.0ex \@plus .2ex}\vspace{\z@}}}

\newenvironment{ozeteng}{\vspace{2.0ex \@plus .2ex}
	{\bfseries \absengname \vspace{1.0ex \@plus .2ex}\vspace{\z@}}}

%\renewcommand{\maketitle}{%
%    \twocolumn[%
%        \fontsize{50}{60}\fontfamily{phv}\fontseries{b}%
%        \fontshape{sl}\selectfont\headlinecolor
%        \@title
%        \medskip
%        ]%
%}

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

%\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
%\addtolength{\oddsidemargin}{-46.3pt}
%\addtolength{\topmargin}{-55.5pt}
%\setlength{\headheight}{27.50pt}
%\setlength{\headsep}{21.54pt}
%\setlength{\textwidth}{170mm}
%\setlength{\textheight}{22cm}
%\setcounter{secnumdepth}{0}