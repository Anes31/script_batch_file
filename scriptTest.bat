cd testYazid\WYNID\UTILS\WSPRINT 
DEL /S /F /Q *.prn

cd ..\..\SWIM
DEL /q WTRACES\WOUT\*
FOR /d %%x IN (WTRACES\WOUT\*) DO @rd /s /q "%%x"

FOR /f %%a IN ('dir /ad/b/s copyWTRS') DO (cd %%a
@rd /s /q %%a)

cd ..\..
FOR /f %%e IN ('dir /ad/b/s WTRS') DO (cd %%e
@rd /s /q %%e)