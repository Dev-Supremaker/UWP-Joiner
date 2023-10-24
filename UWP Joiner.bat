@echo off
:check
cls
echo Prototype or Release
echo 1 - Prototype
echo 2 - Release
set /p option=
if [%option%]==[] (
goto:check
)
if [%option%]==[1] (
goto:proto
)
if [%option%]==[2] (
goto:release
)
:proto
@echo off
cls
set /p link=Enter Private Server Link: 
for /f "tokens=4 delims=/" %%a in ("%link%") do set "placeID=%%a"
for /f "tokens=2 delims==" %%a in ("%link%") do set "linkCode=%%a"
start "" roblox://placeID=%placeid%^&linkCode=%linkcode%
pause
)
:release
:place
cls
set /p placeID=Enter PlaceID: 
if [%placeID%]==[] (
goto:place
)
)
:main
cls
echo Public Server or Private Server
echo 1 - Public Server
echo 2 - Private Server
set /p Server=
if [%Server%]==[] (
goto:main
)
if [%Server%]==[1] (
goto:joinpub
)
if [%Server%]==[2] (
goto:joinpriv
)
)
:joinpub
cls
echo Joining Public Server
start "" roblox://placeID=%placeID%
exit/b
)
:joinpriv
cls
set /p code=Enter PSCode: 
if [%code%]==[] (
goto:joinpriv
)
if [%code%] NEQ [] (
cls
echo Joining Private Server
start "" roblox://placeID=%placeID%"&linkCode="%code%
exit/b
)
)
)