%-------
% gohsu-resume: a resume template based on a mish-mash of many other resume templates. 
% Created by Su Goh, 2021. 
%-------

\ProvidesClass{gohsu-resume}

% A4 paper:
% \LoadClass[11pt,a4paper]{article}
% Letter paper:
\LoadClass[11pt,letterpaper]{article}

\usepackage[left=1in,top=0.8in,right=1in,bottom=0.8in]{geometry} % Document margins

\usepackage{fontawesome}
\usepackage{academicons}
% Fonts (comment out below for serif font)
\usepackage[sfdefault]{ClearSans} 

\usepackage[parfill]{parskip} 
\usepackage{ifthen} 
\usepackage{environ}
\usepackage[hidelinks]{hyperref}
\usepackage{enumitem}
\usepackage{array}
\usepackage{ragged2e}
\usepackage{ulem}
\renewcommand{\ULdepth}{1.5pt}

\setlist[itemize]{align=parleft,left=0pt..1em}
\pagestyle{empty}
\renewcommand{\baselinestretch}{0.75}

\raggedright % comment out for justified text (but hyphens are annoying)

\newenvironment{resumeSection}[1]{
	\MakeUppercase{\bf #1} \smallskip
	\hrule
	\begin{list}{}{ % List for each individual item in the section
			\setlength{\leftmargin}{0em} % Margin within the section
		}
		\item[]
	}{
	\end{list}
	\smallskip
}

\newcommand{\entryHeading}[3]{
	\begin{tabular}{p{0.8\textwidth}p{0.2\textwidth}}
		{#1} & {#2}\\
		{\textit{#3}} & {\space}\\
	\end{tabular}
}

\newcommand{\entrySubheading}[2]{
	\begin{tabular}{p{0.8\textwidth}p{0.2\textwidth}}
		{\bf #1} & {#2}
	\end{tabular}
}

\newenvironment{entryItemize}{
	\begin{itemize}[before=\vspace{-2\baselineskip}, left=0.5em..1.5em, nosep]
		\item[]
	}{
	\end{itemize}
}

\newenvironment{subentryItemize}{
	\begin{itemize}[before=\vspace{-2.5\baselineskip}, left=0.5em..1.5em, nosep]
		\item[]
	}{
	\end{itemize}
}

\newcommand{\linkto}[2]{
	\href{#1}{\uline{#2}}
}

