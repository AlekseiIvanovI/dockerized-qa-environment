#!/bin/bash

echo "Starting Selenium Standalone..."
docker compose up -d selenium

echo "Waiting for Selenium to be ready..."
until curl -s http://localhost:4444/status | grep -q '"ready": true'; do
    echo "Waiting for Selenium..."
    sleep 2
done

echo "Running tests..."
docker compose up --abort-on-container-exit tests

echo "Cleaning up..."
docker compose down