# Dockerized QA Environment

**Senior QA Automation Engineer Portfolio Project**

**Aleksei Ivanov** · Citrus Heights, CA 95621 · (916) 917-8245 · [aleksei.ivanov.qa@gmail.com](mailto:aleksei.ivanov.qa@gmail.com)  
[LinkedIn](https://www.linkedin.com/in/alekseixivanov) · [GitHub](https://github.com/AlekseiIvanovI)

[![Docker](https://img.shields.io/badge/Docker-Ready-2496ED)](https://www.docker.com/)
[![Selenium Grid](https://img.shields.io/badge/Selenium-Grid-green)](https://www.selenium.dev/documentation/grid/)
[![Python](https://img.shields.io/badge/Python-3.12-blue)](https://www.python.org/)

## Overview

A **fully Dockerized QA automation environment** demonstrating **50% reduction in test environment setup time** and enhanced CI/CD reliability.

This project runs a complete Selenium Page Object Model (POM) test suite inside Docker containers:
- Standalone Chrome container
- Selenium Grid for parallel execution
- One-command execution (Windows PowerShell optimized)

Mirrors real-world impact: eliminated manual browser/driver setup, enabling instant, reproducible test runs.

## Features

- Standalone Chrome container for fast local execution
- Selenium Grid (hub + chrome node) for parallel test runs
- PowerShell scripts for Windows users (`run-local.ps1`)
- Full POM test suite (19+ end-to-end tests)
- Automatic screenshots on failure
- Allure reporting support
- Setup time: <30 seconds vs 5–10 minutes manual

## Tech Stack

- **Containerization**: Docker + docker-compose
- **Grid**: Selenium Hub & Node Chrome (v4.25.0)
- **Automation**: Selenium WebDriver 4.25 + Python
- **Testing**: pytest + pytest-xdist (parallel)
- **Reporting**: Allure-pytest, screenshots

## Project Structure
dockerized-qa-environment/
├── Dockerfile                  # Standalone Chrome + tests
├── docker-compose.yml          # Selenium Grid (hub + node)
├── run-local.ps1               # Windows PowerShell script (standalone)
├── conftest.py                 # Docker/Grid-aware driver fixture
├── pages/                      # Page Object Model classes
├── tests/                      # 19+ end-to-end tests
├── screenshoots/               # Failure screenshots
├── my_allure/                  # Allure results
├── requirements.txt
└── README.md

## Quick Start (Windows)

# Standalone run (fast)
.\run-local.ps1

# Parallel run on Grid (3 browsers)
.\run-grid.ps1

## Results

Manual setup time: 5–10 minutes (Chrome + driver + dependencies)
Docker setup time: <30 seconds
Setup time reduced by 50%
Parallel execution: ~3x faster regression
Zero manual configuration needed
Full traceability with screenshots and Allure reports

## Author

Aleksei Ivanov
Senior QA Automation Engineer | 7+ years experience
Specializing in Python + Selenium + Docker automation frameworks
Contact: aleksei.ivanov.qa@gmail.com
LinkedIn: linkedin.com/in/alekseixivanov
GitHub: github.com/AlekseiIvanovI