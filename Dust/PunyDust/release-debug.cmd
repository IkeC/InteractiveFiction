@echo off
setlocal

wsl -d Ubuntu-24.04 -- bash -lc "cd /mnt/c/Source/InteractiveFiction/Dust/PunyDust && bash ./release.sh --debug"