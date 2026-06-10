#!/usr/bin/env bash
set -e

mkdir -p reports

newman run postman/Main.postman_collection.json \
  -e postman/QA.postman_environment.json \
  -r cli,htmlextra \
  --reporter-htmlextra-export reports/report.html

echo "Report generated: reports/report.html"
