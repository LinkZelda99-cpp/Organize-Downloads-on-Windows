# Create today's dated folder in Downloads
$today = Get-Date -Format "MM.dd.yyyy"
$downloadPath = "$env:USERPROFILE\Downloads"
$todayFolder = Join-Path $downloadPath $today
$todayLink = Join-Path $downloadPath "Today"

# Make today's folder if not exists
if (!(Test-Path $todayFolder)) {
    New-Item -ItemType Directory -Path $todayFolder | Out-Null
}

# Remove old "Today" link if it exists
if (Test-Path $todayLink) {
    Remove-Item $todayLink -Force
}

# Create new junction link
cmd /c mklink /J "$todayLink" "$todayFolder"