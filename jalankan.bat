@echo off
chcp 65001 >nul
title Starvite v3.8
cd /d "%~dp0"
echo ==============================
echo   Starvite v3.8
echo ==============================
echo.
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js belum terpasang.
  echo Pasang versi LTS dari https://nodejs.org lalu klik dua kali file ini lagi.
  echo.
  pause
  exit /b
)
echo Menutup server Node lama bila ada...
taskkill /F /IM node.exe >nul 2>nul
if not exist node_modules (
  echo Memasang komponen untuk pertama kali, tunggu 1 sampai 3 menit...
  call npm install
)
if exist .next rmdir /s /q .next
echo.
echo Setelah tulisan Ready muncul, browser terbuka otomatis di http://localhost:3005
echo JANGAN tutup jendela ini selama Starvite dipakai.
echo.
start "" cmd /c "timeout /t 10 >nul & start http://localhost:3005"
call npm run dev -- -p 3005
pause
