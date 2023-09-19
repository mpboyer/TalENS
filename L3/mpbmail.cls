\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mpbmail}

\newif\if@french
\DeclareOption{french}{\@frenchtrue}

\newif\if@english
\DeclareOption{english}{\@englishtrue}

\ProcessOptions

\PassOptionsToClass{foldmarks=true,foldmarks=blmtP,fromalign=center,fromrule=afteraddress,fromphone,fromemail,version=last}{scrlttr2}

\LoadClass{scrlttr2}


\if@french
\usepackage[french]{babel}
\setkomavar{fromname}[Expéditeur : ]{Matthieu Boyer}
\fi

\if@english
\usepackage[british]{babel}
\setkomavar{fromname}[Sender : ]{Matthieu Boyer}
\fi

\setkomavar{fromaddress}{4 Rue Commandant Marchand \\
69003 Lyon}
\setkomavar{fromemail}{matthieu.boyer@ens.psl.eu}
\setkomavar{fromphone}{+33 6 13 68 72 59}


