@ECHO OFF

echo Current Env variables
reg query HKEY_CURRENT_USER\Environment

set /P homeVar="Enter homeVarName: "
set /P homePath="Enter homePath: "

setx /m %homeVar% %homePath%
setx /m PATH "%PATH%;%homePath%%bin%"

echo updated Env variables
reg query HKEY_CURRENT_USER\Environment
