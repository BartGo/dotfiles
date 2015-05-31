@echo off
call allrepos.cmd
for %%X in (%list%) do @cd \%%X && @hg status && @cd \ && @echo   %%X: checked
