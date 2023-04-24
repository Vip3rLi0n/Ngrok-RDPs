$countdown = 360

do {
    Write-Host $countdown
    Start-Sleep -Seconds 60
    $countdown--
} while ($countdown -gt 0)