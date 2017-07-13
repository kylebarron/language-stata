{smcl}
{* *! version 1.1.12  01feb2017}{...}
{viewerdialog use "dialog use_dlg"}{...}
{viewerdialog "use with options" "dialog use_option"}{...}
{vieweralsosee "[D] use" "mansection D use"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] compress" "help compress"}{...}
{vieweralsosee "[D] datasignature" "help datasignature"}{...}
{vieweralsosee "[D] import" "help import"}{...}
{vieweralsosee "[D] save" "help save"}{...}
{vieweralsosee "[D] sysuse" "help sysuse"}{...}
{vieweralsosee "[D] webuse" "help webuse"}{...}
{viewerjumpto "Syntax" "use##syntax"}{...}
{viewerjumpto "Menu" "use##menu"}{...}
{viewerjumpto "Description" "use##description"}{...}
{viewerjumpto "Options" "use##options"}{...}
{viewerjumpto "Examples" "use##examples"}{...}
{title:Title}

{p2colset 5 16 18 2}{...}
{p2col :{manlink D use} {hline 2}}Load Stata dataset{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:Syntax}

{phang}
Load Stata-format dataset

{p 8 12 2}
{opt u:se}
{it:{help filename}}
[{cmd:,}
{opt clear}
{opt nol:abel}]


{phang}
Load subset of Stata-format dataset

{p 8 12 2}
{opt u:se}
[{varlist}]
{ifin}
{cmd:using}
{it:{help filename}}
[{cmd:,}
{opt clear}
{opt nol:abel}]


{marker menu}{...}
{title:Menu}

{phang}
{bf:File > Open...}


{marker description}{...}
{title:Description}

{pstd}
{opt use} loads into memory a Stata-format dataset previously saved by
{opt save}.  If {it:{help filename}} is specified without an extension,
{cmd:.dta} is assumed.  If your {it:filename} contains embedded spaces,
remember to enclose it in double quotes.

{pstd}
In the second syntax for {opt use}, a subset of the data may be read.


{marker options}{...}
{title:Options}

{phang}
{opt clear} specifies that it is okay to replace the data in memory,
even though the current data have not been saved to disk.

{phang}
{opt nolabel} prevents value labels in the saved data from being loaded.
It is unlikely that you will ever want to specify this option.


{marker examples}{...}
{title:Examples}

{phang}{cmd:. use http://www.stata-press.com/data/r15/auto}{p_end}
{phang}{cmd:. replace rep78 = 3 in 12}{p_end}

{phang}{cmd:. use http://www.stata-press.com/data/r15/auto, clear}{p_end}
{phang}{cmd:. keep make price mpg rep78 weight foreign}{p_end}
{phang}{cmd:. save myauto}{p_end}

{phang}{cmd:. use make rep78 foreign using myauto}{p_end}
{phang}{cmd:. describe}{p_end}

{phang}{cmd:. use if foreign == 0 using myauto}{p_end}
{phang}{cmd:. tab foreign, nolabel}{p_end}
{phang}{cmd:. use using myauto if foreign==1}{p_end}
{phang}{cmd:. tab foreign, nolabel}{p_end}
