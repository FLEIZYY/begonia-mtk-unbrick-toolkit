@echo off
title [2/4] Generate NVRAM Image with IMEIs
echo ========================================================
echo  Redmi Note 8 Pro (begonia) - Generate NVRAM Image
echo ========================================================
echo.
if not exist "tools\mtk_imei\config.txt" (
    echo [!] Файл tools\mtk_imei\config.txt не найден!
    echo Скопируйте config.example.json в config.txt и укажите ваши chip_id и IMEI.
    pause
    exit /b 1
)
cd tools\mtk_imei
bin\php.exe bin\mtk_imei.php
cd ..\..
echo.
echo Проверьте появление out\nvram.img в папке tools\mtk_imei\out.
pause
