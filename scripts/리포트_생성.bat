@echo off
chcp 65001 > nul
echo ============================================================
echo   IMS OC 비즈니스 리포트 자동 생성
echo ============================================================
echo.

cd /d "C:\projects\BusinessReport"

echo [실행 중] 데이터 분석 및 Excel 생성 중입니다...
echo.

"C:\Users\in30248\AppData\Local\Python\pythoncore-3.14-64\python.exe" IMS_OC_Dashboard.py

echo.
if %ERRORLEVEL% == 0 (
    echo ✅ 완료! output 폴더에서 리포트를 확인하세요.
    echo.
    start "" "C:\projects\BusinessReport\output"
) else (
    echo ❌ 오류가 발생했습니다. 위 메시지를 확인하세요.
)

echo.
pause
