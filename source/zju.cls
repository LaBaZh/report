\ProvidesClass{zju}
\LoadClass{ctexart}

\RequirePackage{xeCJK}
\RequirePackage{CJKnumb}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{array}
\RequirePackage{mathtools}
\RequirePackage{float}
\RequirePackage{indentfirst}
\RequirePackage{zhnumber}
\RequirePackage{multirow}
\RequirePackage{subfigure}
\RequirePackage{amssymb}
\RequirePackage{fontspec}
\RequirePackage{booktabs}
\RequirePackage{caption}
\RequirePackage[framed,numbered,autolinebreaks,useliterate]{mcode}
\RequirePackage{underscore}

%设置行间距
\linespread{1.5}
%设置页面间距
\geometry{top=1in,bottom=1in,left=1.1in,right=0.83in}
%设置字体
\setCJKmainfont[ItalicFont={宋体},BoldFont={SimHei}]{SimSun}
%标题居左
\CTEXsetup[format+={\raggedright}]{section}
%不显示摘要二字 
\renewcommand{\abstractname} {}



%代码块设置
\lstloadlanguages{
    C,
    C++,
    Python,
    Java,
    Matlab,
    Verilog
}

\lstset{
    %Line number
    numbers=left,
    numberstyle=\small\color{gray}, %代码编号风格
    stepnumber = 1,                 %间隔一行进行编号
    numbersep = 10pt,               %行号与代码的距离
    %Code design
    keywordstyle=\color{purple},
    commentstyle=\color{gray},
    stringstyle=\color{green!60!black},
    breaklines=true,
    % Code
    tabsize=4,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    breaklines=true,
    %Basic
    backgroundcolor=\color{gray!3}, %定义背景颜色
    basicstyle=\ttfamily\fontspec{Consolas},
    frame=lines,                    %设置边框样式
    abovecaptionskip=1pt,           %代码距上边框距离
    belowcaptionskip=5pt,           %代码距下边框距离
}

% 信息
\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\renewcommand\date[1]{\def\@date{#1}}
\newcommand\lab[1]{\def\@lab{#1}}
\newcommand\course[1]{\def\@course{#1}}
\newcommand\instructor[1]{\def\@instructor{#1}}
\newcommand\grades[1]{\def\@grades{#1}}
\newcommand\expname[1]{\def\@expname{#1}}
\newcommand\exptype[1]{\def\@exptype{#1}}
\newcommand\partner[1]{\def\@partner{#1}}

% 下划线定义
\def\zjuu[#1]#2{
  \underline{\hbox to #1{\hfil#2\hfil}}}


\newcommand{\makecover}{
    \thispagestyle{empty}
    \setcounter{page}{-1}

    ~\\
    ~\\
    \vskip 10mm
    \begin{center}
        \includegraphics[width=0.5\paperwidth]{../logo/zjuchar.pdf}
    \end{center}

    \begin{center}
        \zihao{-1} \heiti \bfseries
        本~科~课~程~论~文
    \end{center}

    \vskip 20pt

    \begin{center}
        \includegraphics[width=0.17\paperwidth]{../logo/zju.pdf}
    \end{center}

    \vskip 20pt

    \begin{center}
        \bfseries \zihao{4}
        \begin{tabular}{lc}
            学生姓名 & \zjuu[150pt]\@name   \\
            学生学号 & \zjuu[150pt]\@stuid   \\
            指导教师 & \zjuu[150pt]\@instructor   \\
            专业  & \zjuu[150pt]\@major   \\
            所在学院   & \zjuu[150pt]\@college   \\
            ~ & ~\\
            完成日期 & \zjuu[150pt]\@date   \\ \\
        \end{tabular}
    \end{center}
}