@echo off
call allrepos.cmd

echo "Up" for repositories: %list%

:choice
set /P c=Continue [Y/N]? 
if /I "%c%" EQU "Y" goto :proceed
if /I "%c%" EQU "N" goto :bye
goto :choice

:proceed
date /T > \log.txt
time /T >> \log.txt
for %%X in (%list%) do (
  cd \"%%X" >> \log.txt
  hg up >> \log.txt
  cd \
)
:bye
