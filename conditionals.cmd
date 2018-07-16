@set a=true
@set b=false

@echo off

IF %a% EQU %b% (ECHO TRUE) else (echo FALSE)
IF %a% EQU true (ECHO TRUE) else (echo FALSE)