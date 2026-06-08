@echo off
echo ========================================
echo    MSupport API Automation Started
echo ========================================

newman run Main.postman_collection.json ^
  -e QA.postman_environment.json ^
  --reporters cli,htmlextra ^
  --reporter-htmlextra-export ./reports/report.html ^
  --timeout-request 15000 ^
  --delay-request 800 ^
  --bail

echo.
echo ========================================
echo    Tests Completed!
echo    Check "reports" folder for HTML report
echo ========================================
pause