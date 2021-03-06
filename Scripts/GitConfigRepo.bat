@echo off
Echo Configuring Remote

for /f "tokens=1,2 delims==" %%a in (GitConfig.ini) do (
if %%a==cacheserver set cacheserver=%%b
)

cacheserver = \
git config --replace-all url."http://%cacheserver%/".insteadOf https://
git config --replace-all url."https://".pushInsteadOf https://

Echo Configuring LFS

git lfs install

REM IMAGES
git lfs track "*.psd"
git lfs track "*.png"
git lfs track "*.bmp"
git lfs track "*.gif"

REM AUDIO
git lfs track "*.aif"
git lfs track "*.wav"
git lfs track "*.mp3"
git lfs track "*.ogg"

REM 3D
git lfs track "*.fbx"
git lfs track "*.dae"
git lfs track "*.3ds"
git lfs track "*.dxf"
git lfs track "*.obj"
git lfs track "*.skp"
git lfs track "*.ma"
git lfs track "*.mb"
git lfs track "*.max"
git lfs track "*.c4d"
git lfs track "*.blend"

REM SPEED TREE
git lfs track "*.spt"

REM VIDEO
git lfs track "*.webm"
git lfs track "*.mkv"
git lfs track "*.vob"
git lfs track "*.ogv"
git lfs track "*.drc"
git lfs track "*.gifv"
git lfs track "*.mng"
git lfs track "*.avi"
git lfs track "*.mov"
git lfs track "*.qt"
git lfs track "*.wmv"
git lfs track "*.yuv"
git lfs track "*.rm"
git lfs track "*.rmvb"
git lfs track "*.asf"
git lfs track "*.amv"
git lfs track "*.m4p"
git lfs track "*.svi"
git lfs track "*.3gp"
git lfs track "*.3g2"
git lfs track "*.mxf"
git lfs track "*.roq"
git lfs track "*.nsv"
git lfs track "*.flv"
git lfs track "*.f4v"
git lfs track "*.f4p"
git lfs track "*.f4a"
git lfs track "*.f4b"

git add .gitattributes