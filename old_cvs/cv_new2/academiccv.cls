\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{academiccv}[2011/08/01 v0.1 Academic CV]
\LoadClass{scrartcl}


% Packages
\RequirePackage[LabelsAligned]{currvita}
\RequirePackage[nochapters]{classicthesis}
\RequirePackage[a4paper, footskip=0.5cm, top=1.5cm, bottom=1.5cm, left=4cm, right=3cm]{geometry}
\RequirePackage{url}
\RequirePackage{multicol}
\RequirePackage{xcolor}
\definecolor{cambridgedarkblue}{RGB}{0,62,114}
\RequirePackage{hyperref} 		
\RequirePackage{eurosym}
\RequirePackage{setspace}
\RequirePackage{placeins}

\hypersetup{	
  colorlinks,
  breaklinks,
  urlcolor=cambridgedarkblue, 
  linkcolor=cambridgedarkblue}

\reversemarginpar

% Defining user information commands
\newcommand*{\@forenames}{}
\newcommand*{\forenames}[1]{\renewcommand*{\@forenames}{#1}}
\newcommand*{\@surname}{}
\newcommand*{\surname}[1]{\renewcommand*{\@surname}{#1}}
\newcommand*{\@address}{\rule{0pt}{1in}}
\newcommand*{\address}[1]{\renewcommand*{\@address}{#1}}
\newcommand*{\@phone}{}
\newcommand*{\phone}[1]{\renewcommand*{\@phone}{#1}}
\newcommand*{\@fax}{}
\newcommand*{\fax}[1]{\renewcommand*{\@fax}{#1}}
\newcommand*{\@email}{}
\newcommand*{\email}[1]{\renewcommand*{\@email}{#1}}

% Define heading commands

\renewcommand{\section}{\@startsection{section}{1}{0mm}
  {\baselineskip}%
  {\baselineskip}{\normalfont\normalsize\scshape}}%

\renewcommand{\subsection}{\@startsection{section}{1}{0mm}
  {\baselineskip}%
  {\baselineskip}{\normalfont\normalsize}}%

% Items
\newcommand{\DateItem}[3]{\noindent\footnotesize#2\marginpar{\raggedleft\itshape\small #1} #3\FloatBarrier}
\newcommand{\Paper}[4]{{\noindent\footnotesize #2 \marginpar{\raggedleft\itshape\small #1} ``#3". \textit{#4}.\FloatBarrier}}
\newcommand{\Talk}[3]{{\noindent\footnotesize ``\marginpar{\raggedleft\itshape\small #1}#2". \textit{#3}.\FloatBarrier}}
\newcommand{\Experience}[4]{{\noindent\footnotesize #2\marginpar{\raggedleft\itshape\small #1}. {#3}\\ \textit{#4}.\FloatBarrier}}

% Header
\newcommand{\makehead}{%
\begin{center}
\setlength{\leftmargin}{2.5cm}
\textsc{Curriculum Vitae}
\vspace{8pt}
\hrule
\vspace{8pt}
\LARGE \textsc{\@forenames \space \@surname}
\end{center}
\vspace{8pt}
\noindent \@address
\hspace{1.5em}\\
\emph{phone: }{\@phone}{}\\
\emph{fax: }{\@fax}{}\\
\emph{email: }{\href{mailto:\@email}{\@email}}{}\\
}


