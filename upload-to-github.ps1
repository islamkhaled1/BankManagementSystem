# ========================================
# GitHub Upload Script
# Bank Management System
# ========================================

Write-Host "================================" -ForegroundColor Cyan
Write-Host "  GitHub Upload Script" -ForegroundColor Yellow
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Get GitHub username
$username = Read-Host "Enter your GitHub username"

# Get repository name (default: BankManagementSystem)
$repoName = Read-Host "Enter repository name (default: BankManagementSystem)"
if ([string]::IsNullOrWhiteSpace($repoName)) {
    $repoName = "BankManagementSystem"
}

Write-Host ""
Write-Host "================================" -ForegroundColor Green
Write-Host "Repository will be created at:" -ForegroundColor White
Write-Host "https://github.com/$username/$repoName" -ForegroundColor Yellow
Write-Host "================================" -ForegroundColor Green
Write-Host ""

# Confirm
$confirm = Read-Host "Continue? (y/n)"
if ($confirm -ne "y" -and $confirm -ne "Y") {
    Write-Host "Cancelled." -ForegroundColor Red
    exit
}

Write-Host ""
Write-Host "Step 1: Checking Git status..." -ForegroundColor Cyan

# Check if git is initialized
if (-not (Test-Path ".git")) {
    Write-Host "Initializing Git repository..." -ForegroundColor Yellow
    git init
    git branch -M main
}

Write-Host "Step 2: Adding files..." -ForegroundColor Cyan
git add .

Write-Host "Step 3: Creating commit..." -ForegroundColor Cyan
git commit -m "Initial commit: Bank Management System with full features"

Write-Host "Step 4: Adding remote..." -ForegroundColor Cyan
$remoteUrl = "https://github.com/$username/$repoName.git"

# Remove existing origin if exists
git remote remove origin 2>$null

git remote add origin $remoteUrl

Write-Host ""
Write-Host "================================" -ForegroundColor Yellow
Write-Host "IMPORTANT: Authentication Required" -ForegroundColor Red
Write-Host "================================" -ForegroundColor Yellow
Write-Host "When prompted for password, use your GitHub Personal Access Token" -ForegroundColor White
Write-Host ""
Write-Host "To create a token:" -ForegroundColor Cyan
Write-Host "1. Go to: https://github.com/settings/tokens" -ForegroundColor White
Write-Host "2. Click 'Generate new token (classic)'" -ForegroundColor White
Write-Host "3. Select 'repo' permissions" -ForegroundColor White
Write-Host "4. Copy the token and use it as password" -ForegroundColor White
Write-Host ""
Read-Host "Press Enter when ready to push"

Write-Host ""
Write-Host "Step 5: Pushing to GitHub..." -ForegroundColor Cyan
git push -u origin main

Write-Host ""
Write-Host "================================" -ForegroundColor Green
Write-Host "SUCCESS! Repository uploaded!" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green
Write-Host ""
Write-Host "View your repository at:" -ForegroundColor White
Write-Host "https://github.com/$username/$repoName" -ForegroundColor Yellow
Write-Host ""
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
