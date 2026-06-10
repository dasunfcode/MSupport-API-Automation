@echo off
echo Running API tests...

newman run ..\postman\Main.postman_collection.json ^
  -e ..\postman\QA.postman_environment.json ^
  --reporters cli,htmlextra ^
  --reporter-htmlextra-export reports\report.html

echo.
echo Report generated at reports\report.html
pause