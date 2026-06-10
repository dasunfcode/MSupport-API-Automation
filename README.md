# MSupport API Automation

## GitHub workflow

The API automation workflow runs when a pull request is merged into the `qa` branch.

- Workflow file: `.github/workflows/api-tests.yml`
- It installs `newman` and `newman-reporter-htmlextra`
- It runs the Postman collection from `postman/Main.postman_collection.json`
- It uses the QA environment file `postman/QA.postman_environment.json`
- It uploads `reports/report.html` as an artifact

## Run tests locally on Windows

1. Open PowerShell or Command Prompt.
2. Navigate to the `MSupport API` folder.
3. Run:

```bat
MSupport API\run-tests.bat
```

## Run tests locally on Linux/macOS

1. Open a terminal.
2. Navigate to the repository root.
3. Run:

```bash
chmod +x .github/scripts/run-api-tests.sh
.github/scripts/run-api-tests.sh
```
