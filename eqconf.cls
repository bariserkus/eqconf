\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{eqconf}[2019/02/20 Latex Class for Earthquake Conference]
 
\newcommand{\headlinecolor}{\normalcolor}
\LoadClass[12pt,a4paper]{article}
\RequirePackage{xcolor}
\definecolor{slcolor}{HTML}{882B21}


\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\usepackage{mathptmx}
\renewcommand{\familydefault}{\rmdefault} 
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}

%\usepackage[a4paper]{geometry}
%\geometry{verbose,tmargin=25mm,bmargin=20mm,lmargin=25mm,rmargin=30mm,footskip=10mm}

%\renewcommand{\maketitle}{%
%    \twocolumn[%
%        \fontsize{50}{60}\fontfamily{phv}\fontseries{b}%
%        \fontshape{sl}\selectfont\headlinecolor
%        \@title
%        \medskip
%        ]%
%}
 
\renewcommand{\section}{%
    \@startsection
    {section}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}%
    {1ex plus .2ex}{\large\sffamily\slshape\headlinecolor}%
}

%\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
\addtolength{\oddsidemargin}{-46.3pt}
\setlength{\textwidth}{170mm}
%\setlength{\textheight}{22cm}
\setcounter{secnumdepth}{0}