@echo off
title [1/4] Wipe Corrupted NV Partitions (BROM Mode)
echo ========================================================
echo  Redmi Note 8 Pro (begonia) - Wipe Corrupted NV Partitions
echo ========================================================
echo.
echo 1. Выключите телефон полностью.
echo 2. Зажмите обе кнопки громкости (Vol+ и Vol-) и подключите кабель USB.
echo.
python tools\mtkclient\mtk.py --ptype kamakiri e nvram,nvdata,nvcfg
pause
