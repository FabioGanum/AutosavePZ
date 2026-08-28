$dest = "PATH_TO_BACKUP_FOLDER"
Remove-Item -Path "$dest\*" -Recurse -Force -ErrorAction SilentlyContinue
if (-not (Test-Path $dest)) { New-Item -Path $dest -ItemType Directory -Force | Out-Null }


$src = Get-ChildItem -Path "PATH_TO_PZ_SAVE_FOLDER" -Filter "ACTUAL_YEAR*" -Directory
Copy-Item -Path $src.FullName -Destination $dest -Recurse -Force