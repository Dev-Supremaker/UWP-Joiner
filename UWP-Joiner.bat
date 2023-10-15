@echo off
:PLC
cls
set /p placeID=Enter PlaceID: 
if [%placeID%]==[] (
call:PLC
)
:SVC
if NOT [%code%]==[] (
exit/b
)
cls
echo Public Server or Private Server
echo 1 - Public Server
echo 2 - Private Server
set /p Server=
if [%Server%]==[1] (
set /p placeID=Enter PlaceID: 
start "" roblox://placeID=%placeID%
)
if [%Server%]==[2] (
:PSC
cls
set /p code=Enter PSCode: 
if [%code%]==[] (
call:PSC
)
if [%code%] NEQ [] (
start "" roblox://placeID=%placeID%"&linkCode="%code%
)
)
if [%Server%] NEQ 1 (
call:SVC
)
if [%Server%] NEQ 2 (
call:SVC
)