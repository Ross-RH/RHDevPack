@echo off

for /f "tokens=1,2 delims==" %%a in (GitConfig.ini) do (
if %%a==cacheserver set cacheserver=%%b
)

echo setting url override for cache server
set arg1=%1
git config --global --replace-all url."http://%cacheserver%/".insteadOf https://
git config --global --replace-all url."https://".pushInsteadOf https://

git lfs install