\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pamphlet}[2022/01/20 Style for pamphlets based on article]

%%% OPTIONS
\RequirePackage{xkeyval}

%%% OPTIONS
\DeclareOptionX{title}{\def\doctitle{#1}}
\DeclareOptionX{subtitle}{\def\docsubtitle{#1}}
\DeclareOptionX{subject}{\def\docsubject{#1}}
\DeclareOptionX{author}{\def\docauthor{#1}}
\DeclareOptionX{creator}{\def\doccreator{#1}}
\ExecuteOptionsX{%
title=,%
subtitle=,%
subject=,%
author=,%
creator=,%
}
\ProcessOptionsX\relax
\LoadClass[a4paper]{article}
%%% /OPTIONS


%%% PACKAGES
\RequirePackage[english]{babel}
\RequirePackage{enumitem}
\RequirePackage{fontspec}
\RequirePackage{framed}
\RequirePackage[left=1.5cm,right=1.5cm,top=1.5cm,bottom=2cm]{geometry}
\RequirePackage{hyperref}
\RequirePackage[small,sf,bf,compact]{titlesec}
\RequirePackage{xcolor}
\RequirePackage{xargs}
\RequirePackage[fontsize=17pt]{fontsize}
%%% /PACKAGES

%%% COLORS
\newcommandx{\colorrule}[2][1=red, 2=1pt]{%
	\null\noindent%
	{\color{#1} \rule{\linewidth}{#2}}
}
%%% /COLORS


%%% FONTS
\defaultfontfeatures{Ligatures=TeX}
\setromanfont[
Path=fonts/,
ItalicFont=Newsreader-Italic,
BoldFont=Newsreader-Bold,
BoldItalicFont=Newsreader-BoldItalic
]{Newsreader-Regular}

\setsansfont[
Path=fonts/,
ItalicFont=Lexend-SemiBold,
BoldFont=Lexend-Black,
BoldItalicFont=Lexend-Medium,
UprightFont=Lexend-SemiBold,
]{Lexend-Regular}


\tolerance=666

\newcommand{\GIGANTIC}{\changefontsize[48pt]{48pt}}
\newcommand{\Gigantic}{\changefontsize[32pt]{32pt}}
\newcommand{\gigantic}{\changefontsize[24pt]{24pt}}

\renewcommand{\familydefault}{\rmdefault}

\newcommand{\sectionnumberstyle}{\normalfont\sffamily\GIGANTIC\itshape}
\newcommand{\subsectionnumberstyle}{\normalfont\sffamily\gigantic\itshape}
\newcommand{\subsubsectionnumberstyle}{\normalfont\sffamily\LARGE\itshape}
\newcommand{\sectiontitlestyle}{\bfseries}
%%% /FONTS

%%% SECTIONS
\titleformat{\section}[block]
{\sectionnumberstyle\filcenter}{\thesection}{.5em}{\normalfont\sffamily\GIGANTIC\bfseries}

\titleformat{\subsection}[block]
{\subsectionnumberstyle\filcenter}{\thesubsection}{1em}{\normalfont\sffamily\gigantic\bfseries}

\titleformat{\subsubsection}[hang]
{\subsubsectionnumberstyle}{\thesubsubsection}{1em}{\sectiontitlestyle}

\titlespacing{\section}{}{0pt}{0pt}
\titlespacing{\subsection}{}{0pt}{.5em}
%%% /SECTIONS

%%% META
\makeatletter
\newcommand*{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand*{\@subtitle}{}
\newcommand*{\thesubtitle}{\@subtitle}
\newcommand*{\thetitle}{\@title}
\makeatother
%%% /META

\newenvironment{boldquote}{%
    \null\noindent\hspace{.1\textwidth}%
    \begin{minipage}[t]{.8\textwidth}\sffamily\large\bfseries
}{%
    \end{minipage}
    \vskip\baselineskip
}
\newenvironment{boldishquote}{%
    \null\noindent\hspace{.1\textwidth}%
    \begin{minipage}[t]{.8\textwidth}\sffamily\large\upshape
}{%
    \end{minipage}
    \vskip\baselineskip
}

\setlist[description]{topsep=0pt,leftmargin=2em,rightmargin=0pt,labelsep=5pt,itemsep=0pt}


%%% HEADER/FOOTER
    \pagestyle{empty}
%%%


\author{\docauthor}
\title{\doctitle}
\subtitle{\docsubtitle}
\date{\the\year}

\hypersetup{
    pdfinfo={
        Author=\docauthor,
        Title=\doctitle -- \docsubtitle,
        Subject=\docsubject,
        Creator=\doccreator
        % ...
    },
    colorlinks=false,
    linktoc=all,
    colorlinks=true,
    linkcolor=black,
}