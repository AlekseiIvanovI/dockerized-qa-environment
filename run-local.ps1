Write-Host "Starting Selenium Standalone..."
docker compose up -d selenium

Write-Host "Waiting for Selenium to be ready..."
while ($true) {
    try {
        $response = Invoke-RestMethod http://localhost:4444/status
        if ($response.value.ready) { break }
    } catch { }
    Start-Sleep -Seconds 2
}

Write-Host "Running tests..."
docker compose up --abort-on-container-exit tests

Write-Host "Cleaning up..."
docker compose down