:@echo
c:

:del /s /q /F "C:\Windows\Microsoft.NET\Framework\v2.0.50727\Temporary ASP.NET Files\*"
cd "C:\Windows\Microsoft.NET\Framework\v2.0.50727\Temporary ASP.NET Files\"
del /s /q /F *.*
for /d %%i in (*) do rmdir /s /q "%%i"


:del /s /q /F "C:\Windows\Microsoft.NET\Framework\v4.0.30319\Temporary ASP.NET Files\*"
cd "C:\Windows\Microsoft.NET\Framework\v4.0.30319\Temporary ASP.NET Files\"
del /s /q /F *.*
for /d %%i in (*) do rmdir /s /q "%%i"


:del /s /q /F "C:\Windows\Microsoft.NET\Framework\v2.0.50727\Temporary ASP.NET Files\*"
cd "C:\Windows\Microsoft.NET\Framework64\v2.0.50727\Temporary ASP.NET Files\"
del /s /q /F *.*
for /d %%i in (*) do rmdir /s /q "%%i"

:del /s /q /F "C:\Windows\Microsoft.NET\Framework\v4.0.30319\Temporary ASP.NET Files\*"
cd "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Temporary ASP.NET Files\"
del /s /q /F *.*
for /d %%i in (*) do rmdir /s /q "%%i"

:pause;
