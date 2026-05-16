@echo off
echo === Folder Remover ===
set /p foldername=Enter the name of the folder to delete: 

if "%foldername%"=="" (
    echo Error: Folder name cannot be empty.
    pause
    exit /b 1
)

if not exist "%foldername%\" (
    echo Error: Folder '%foldername%' does not exist.
    pause
    exit /b 1
)

set /p confirm=Are you sure you want to DELETE '%foldername%' and all its contents? (Y/N): 
if /i "%confirm%"=="Y" (
    rmdir /s /q "%foldername%"
    echo Success: Folder '%foldername%' has been deleted.
) else (
    echo Operation cancelled.
)
pause