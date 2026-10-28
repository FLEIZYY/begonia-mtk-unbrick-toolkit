@echo off
title [3/4] Flash Restored NVRAM (BROM Mode)
echo ========================================================
echo  Redmi Note 8 Pro (begonia) - Flash Restored NVRAM
echo ========================================================
echo.
if not exist "tools\mtk_imei\out\nvram.img" (
    echo [!] Файл tools\mtk_imei\out\nvram.img не найден! Сначала выполните шаг 2.
    pause
    exit /b 1
)
echo 1. Выключите телефон полностью.
echo 2. Зажмите обе кнопки громкости (Vol+ и Vol-) и подключите кабель USB.
echo.
python tools\mtkclient\mtk.py --ptype kamakiri w nvram tools\mtk_imei\out\nvram.img
pause
