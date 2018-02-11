@echo off
del master
wget.exe https://coding.net/u/zzhev3/p/browser/git/archive/master
md C:\up
DEL /q C:\up\*.*
RD /S /q C:\up
7z.exe x master -y -aos -o"C:\up"
start C:\up\browser-master\Ğ¡Ôø¸ßËÙä¯ÀÀÆ÷.part01.exe