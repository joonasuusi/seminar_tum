REM -*- coding:utf-8; -*-
REM Komennot, joilla saa generoitua ITKY4000:n Oppimispaivakirjan
REM neljannen osan PDF:n Windowsilla, johon on asennettu MiKTeX.
REM
REM Vanha kunnon DOS batchfile... tama on helppokayttoisin ratkaisu, 
REM minka keksin Winkkarin kayttajille tahan hataan LaTeXin kayttoon.
REM
REM Agoran mikroluokissa taman pitaa olla hakemiston C:\MyTemp alla,
REM joten ajetaan esimerkiksi komennolla C:\MyTemp\nieminen\tehita.bat
REM kun tyoskentelyhakemisto on esimerkiksi
REM U:\opiskelujutut\itky4000\esimerkkidokumentti_opk4\
REM
REM Opastusvideokin tulee taman kayttamisesta...
REM
REM Linux- ja Mac-kayttajat voi asentaa omasta pakettimanagerista
REM LaTeX ja Make -jarjestelmat ja kayttaa sitten komentoa "make".
REM
REM MiKTEXin ilmeisesti saa omalle koneelle osoitteesta
REM https://miktex.org/ ja Agoran mikroluokissa se mahdollisesti onkin
REM asennettuna. Ainakin mun omalla tyopisteella loytyy oletuksena ja
REM paljon on samalla lailla kuin mikroluokissa.



"c:\Program Files\MiKTeX\miktex\bin\x64\pdflatex.exe" study.tex
"c:\Program Files\MiKTeX\miktex\bin\x64\biber.exe" study
"c:\Program Files\MiKTeX\miktex\bin\x64\pdflatex.exe" study.tex
"c:\Program Files\MiKTeX\miktex\bin\x64\pdflatex.exe" study.tex
