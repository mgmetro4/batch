@rem Practice Batch File - start with purpose of script

@rem rem commands are not executed - "Remarks"
@rem @ will stop command from being echoed if echo is on
:: will also rem without echo

@echo off

echo Practice Batch File

echo "This prints the quotation marks"

rem this pauses the script. 'Press any key to continue'
pause

::this is also how you call another batch file into the same environemnt
::to call a batch file into a different environment, use CMD
CALL :function1

CALL :function2

IF %ERRORLEVEL% NEQ 0 CALL :catch ELSE CALL :happy
::do not use GOTO unless you want to skip down to that part of the script

::closest thing to try/catch. run both with &&; run 1st that works with ||.
CALL :happy && CALL :function1
CALL :function2 || CALL :happy


:: force quit. Use /B to set %ERRORLEVEL%%. 0 if successful, 1 if not unless otherwise stated
EXIT /B


::functions!! Start definition with :function-name

:function1
echo Calling function1
EXIT /B

:function2
EXIT /B 1

:happy
echo No error! =) 
:: if you do not use /b the %errorlevel% will not be altered
::same as using GOTO :eof (end of routine)
exit /B

:catch
echo There was an error!
EXIT /B 0