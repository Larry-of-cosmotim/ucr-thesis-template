%% ucr-thesis.cls
%% LaTeX class for University of California, Riverside dissertations
%% Based on UCR Graduate Division Format Guide 2025/2026
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ucr-thesis}[2026/04/01 UCR Dissertation Format]

% Base class
\LoadClass[12pt,oneside]{report}

% ============================================================
% Required Packages
% ============================================================
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathptmx}           % Times New Roman
\RequirePackage{amsmath,amssymb}
\RequirePackage{graphicx}
\RequirePackage{setspace}           % Double spacing
\RequirePackage{titlesec}           % Chapter/section formatting
\RequirePackage{tocloft}            % TOC formatting
\RequirePackage{fancyhdr}           % Headers/footers
\RequirePackage{etoolbox}           % Programming tools
\RequirePackage[titles]{tocloft}
\RequirePackage{caption}            % Caption formatting
\RequirePackage{booktabs}           % Professional tables
\RequirePackage[hidelinks]{hyperref}% Hyperlinks (no colored boxes)

% ============================================================
% Page Layout — UCR Requirements
% Margins: 1.5" top and left, 1" bottom and right
% ============================================================
\RequirePackage[
  top=1.5in,
  left=1.5in,
  bottom=1in,
  right=1in,
  headheight=14pt
]{geometry}

% ============================================================
% Spacing — Double-spaced body text
% ============================================================
\doublespacing

% ============================================================
% Page Numbering — Centered at bottom
% ============================================================
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Plain page style (chapter opening pages)
\fancypagestyle{plain}{
  \fancyhf{}
  \fancyfoot[C]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
}

% Empty page style (title, copyright, approval)
\fancypagestyle{preliminary-no-number}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

% ============================================================
% Chapter and Section Formatting
% ============================================================
\titleformat{\chapter}[display]
  {\normalfont\Large\bfseries\centering}
  {Chapter \thechapter}{0pt}{\Large}
\titlespacing*{\chapter}{0pt}{-20pt}{20pt}

\titleformat{\section}
  {\normalfont\large\bfseries}{{\thesection}}{1em}{}
\titleformat{\subsection}
  {\normalfont\normalsize\bfseries}{{\thesubsection}}{1em}{}
\titleformat{\subsubsection}
  {\normalfont\normalsize\itshape}{{\thesubsubsection}}{1em}{}

% ============================================================
% Table of Contents Formatting
% ============================================================
\renewcommand{\contentsname}{Table of Contents}
\renewcommand{\listfigurename}{List of Figures}
\renewcommand{\listtablename}{List of Tables}

% Single-spaced TOC with blank line between entries
\setlength{\cftbeforechapskip}{6pt}
\setlength{\cftbeforesecskip}{3pt}

% ============================================================
% Caption Formatting
% ============================================================
\captionsetup{
  font=small,
  labelfont=bf,
  singlelinecheck=false,
  format=hang
}

% ============================================================
% Metadata Commands
% ============================================================
\newcommand{\@dissertationtitle}{}
\newcommand{\@degreeprogram}{Electrical Engineering}
\newcommand{\@degreename}{Doctor of Philosophy}
\newcommand{\@conferraldate}{}
\newcommand{\@committeechairperson}{}
\newcommand{\@committeemembertwo}{}
\newcommand{\@committeememberthree}{}
\newcommand{\@committeememberfour}{}
\newcommand{\@committeememberfive}{}

\newcommand{\dissertationtitle}[1]{\renewcommand{\@dissertationtitle}{#1}}
\newcommand{\degreeprogram}[1]{\renewcommand{\@degreeprogram}{#1}}
\newcommand{\degreename}[1]{\renewcommand{\@degreename}{#1}}
\newcommand{\conferraldate}[1]{\renewcommand{\@conferraldate}{#1}}
\newcommand{\committeechairperson}[1]{\renewcommand{\@committeechairperson}{#1}}
\newcommand{\committeemembertwo}[1]{\renewcommand{\@committeemembertwo}{#1}}
\newcommand{\committeememberthree}[1]{\renewcommand{\@committeememberthree}{#1}}
\newcommand{\committeememberfour}[1]{\renewcommand{\@committeememberfour}{#1}}
\newcommand{\committeememberfive}[1]{\renewcommand{\@committeememberfive}{#1}}

% ============================================================
% Title Page — UCR Format (page i, no printed number)
% ============================================================
\newcommand{\maketitlepage}{%
  \thispagestyle{preliminary-no-number}%
  \begin{center}
    \singlespacing
    UNIVERSITY OF CALIFORNIA\\
    RIVERSIDE\\
    \vspace{1.5in}
    \doublespacing
    \@dissertationtitle\\
    \vspace{0.5in}
    \singlespacing
    A Dissertation submitted in partial satisfaction\\
    of the requirements for the degree of\\
    \vspace{0.3in}
    \@degreename\\
    \vspace{0.1in}
    in\\
    \vspace{0.1in}
    \@degreeprogram\\
    \vspace{0.1in}
    by\\
    \vspace{0.1in}
    \@author\\
    \vspace{0.3in}
    \@conferraldate\\
    \vfill
    Dissertation Committee:\\
    \@committeechairperson, Chairperson\\
    \@committeemembertwo\\
    \@committeememberthree\\
    \ifx\@committeememberfour\empty\else\@committeememberfour\\\fi
    \ifx\@committeememberfive\empty\else\@committeememberfive\\\fi
  \end{center}
  \newpage
}

% ============================================================
% Copyright Page — (page ii, no printed number)
% ============================================================
\newcommand{\makecopyrightpage}{%
  \thispagestyle{preliminary-no-number}%
  \vspace*{\fill}
  \begin{center}
    \singlespacing
    Copyright by\\
    \@author\\
    \@conferraldate
  \end{center}
  \vspace*{\fill}
  \newpage
}

% ============================================================
% Signature Approval Page — (page iii, no printed number)
% Blank version for PDF submission
% ============================================================
\newcommand{\makeapprovalpage}{%
  \thispagestyle{preliminary-no-number}%
  \vspace*{0.5in}
  \begin{singlespace}
  \noindent The Dissertation of \@author\ is approved:\\
  \vspace{1in}
  \hfill\rule{3.5in}{0.4pt}\\
  \vspace{0.5in}
  \hfill\rule{3.5in}{0.4pt}\\
  \vspace{0.5in}
  \hfill\rule{3.5in}{0.4pt}\\
  \hspace*{\fill}Committee Chairperson\\
  \ifx\@committeememberfour\empty\else
    \vspace{0.5in}
    \hfill\rule{3.5in}{0.4pt}\\
  \fi
  \ifx\@committeememberfive\empty\else
    \vspace{0.5in}
    \hfill\rule{3.5in}{0.4pt}\\
  \fi
  \vfill
  \begin{center}
    University of California, Riverside
  \end{center}
  \end{singlespace}
  \newpage
}

% ============================================================
% Abstract Page
% ============================================================
\newenvironment{dissertationabstract}{%
  \chapter*{Abstract of the Dissertation}
  \addcontentsline{toc}{chapter}{Abstract}
  \begin{center}
    \singlespacing
    \@dissertationtitle\\
    \vspace{0.3in}
    by\\
    \vspace{0.1in}
    \@author\\
    \vspace{0.1in}
    \@degreename, Graduate Program in \@degreeprogram\\
    University of California, Riverside, \@conferraldate\\
    \@committeechairperson, Chairperson\\
  \end{center}
  \vspace{0.3in}
  \doublespacing
}{%
  \newpage
}

% ============================================================
% Preliminary Page Environment
% Sets Roman numeral pagination starting at iv
% ============================================================
\newcommand{\beginpreliminarypages}{%
  \pagenumbering{roman}%
  \setcounter{page}{1}%  Title page = i
}

\newcommand{\beginbodypages}{%
  \newpage
  \pagenumbering{arabic}%
  \setcounter{page}{1}%
}

% ============================================================
% Convenience: start printed roman numerals at iv
% (after title=i, copyright=ii, approval=iii)
% ============================================================
\newcommand{\startprintedprelim}{%
  \setcounter{page}{4}%  iv
}

\endinput
