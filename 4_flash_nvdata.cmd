@echo off
title [4/4] Flash Clean NVDATA (BROM Mode)
echo ========================================================
echo  Redmi Note 8 Pro (begonia) - Flash Clean NVDATA
echo ========================================================
echo.
if not exist "tools\mtk_imei\out\nvdata.img" (
    echo [!] Файл tools\mtk_imei\out\nvdata.img не найден!
    pause
    exit /b 1
)
echo 1. Выключите телефон полностью.
echo 2. Зажмите обе кнопки громкости (Vol+ и Vol-) и подключите кабель USB.
echo.
python tools\mtkclient\mtk.py --ptype kamakiri w nvdata tools\mtk_imei\out\nvdata.img
pause
