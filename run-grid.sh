#!/bin/bash

echo "Starting Selenium Grid..."

docker compose up -d

echo "Waiting for Grid to be ready..."
until curl -s http://localhost:4444/wd/hub/status | grep -q "ready"; do
  sleep 2
done

echo "Running tests in parallel on Grid..."

docker run --rm \
  --network host \
  -v "$(pwd)/screenshoots:/app/screenshoots" \
  -v "$(pwd)/my_allure:/app/my_allure" \
  saucedemo-docker \
  pytest tests/ -n 3 -v  # 3 parallel browsers

echo "Cleaning up..."
docker compose down