# Retention & Release Management Script for Rizza APKs
# Keeps at most 10 versioned APKs in the repository.

param (
    [Parameter(Mandatory=$false)]
    [string]$SourceApk = "c:\Users\vrund\OneDrive\Desktop\rizza-app\android\app\build\outputs\apk\debug\app-debug.apk",
    
    [Parameter(Mandatory=$false)]
    [string]$Version = ""
)

$ErrorActionPreference = "Stop"
$RepoDir = "c:\Users\vrund\OneDrive\Desktop\rizza-apks-download"
$ApksDir = Join-Path $RepoDir "apks"

if (-not (Test-Path $SourceApk)) {
    Write-Error "Source APK not found at: $SourceApk"
}

if (-not $Version) {
    $DateStr = Get-Date -Format "yyyyMMdd-HHmm"
    $Version = "v-$DateStr"
}

$NewApkName = "rizza-app-$Version.apk"
$DestinationApk = Join-Path $ApksDir $NewApkName
$LatestApkInDir = Join-Path $ApksDir "rizza-app-latest.apk"
$LatestApkInRoot = Join-Path $RepoDir "rizza-app-latest.apk"

Write-Host "Copying $SourceApk to $DestinationApk..."
Copy-Item $SourceApk -Destination $DestinationApk -Force
Copy-Item $SourceApk -Destination $LatestApkInDir -Force
Copy-Item $SourceApk -Destination $LatestApkInRoot -Force

# Enforce 10-file retention policy (excluding rizza-app-latest.apk)
$AllApks = Get-ChildItem -Path $ApksDir -Filter "*.apk" | Where-Object { $_.Name -ne "rizza-app-latest.apk" } | Sort-Object LastWriteTime -Descending

if ($AllApks.Count -gt 10) {
    $ApksToDelete = $AllApks | Select-Object -Skip 10
    foreach ($apk in $ApksToDelete) {
        Write-Host "Pruning old APK to maintain <= 10 builds limit: $($apk.Name)"
        Remove-Item $apk.FullName -Force
    }
}

Write-Host "Current APKs in repository (limit: 10):"
$CurrentApks = Get-ChildItem -Path $ApksDir -Filter "*.apk" | Where-Object { $_.Name -ne "rizza-app-latest.apk" } | Sort-Object LastWriteTime -Descending
$CurrentApks | Select-Object Name, Length, LastWriteTime | Format-Table -AutoSize

# Commit and push
Set-Location $RepoDir
git add .
git commit -m "release: push $Version APK (retention enforced <= 10 builds)"
git push origin main

Write-Host "Successfully published $Version to GitHub!"
