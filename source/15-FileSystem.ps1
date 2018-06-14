$desktop = [Environment]::GetFolderPath("Desktop")

# 해당 폴더 리스트 GET
Get-ChildItem -Path "C:/"

# 해당 폴더 리스트를 재귀적으로 탐색한다
# Get-ChildItem -Path "C:/" -Recurse

# 새로운 파일을 생성해보자
New-Item -Path $desktop -Name "MyPowerShell.txt" -ItemType File -Value "whowhowho... I'm lucky!!"

# 새로운 폴더를 생성해보자
New-Item -Path $desktop -Name "MyPowerShellFolder" -ItemType Directory

# 그렇다면 파일이나 폴더를 옮겨보자
Move-Item -Path "$desktop/MyPowerShellFolder" -Destination "$desktop/NewFolder"
Move-Item -Path "$desktop/MyPowerShell.txt" -Destination "$desktop/NewPowerShell.txt"

# 파일을 복사도 해보자
Copy-Item -Path "$desktop/NewPowerShell.txt" -Destination "$desktop/MyPowerShell.txt"

# 파일이 있는 지를 체크해봅시다
if ((Test-Path "$desktop") -eq $true) {
    Write-Host "Test-Path!!"
}

# 파일을 쓰고 추가하고 비워보자!!
Clear-Content -Path "$desktop/NewPowerShell.txt"
Set-Content -Path "$desktop/NewPowerShell.txt" -Value "value!!"
Add-Content -Path "$desktop/NewPowerShell.txt" -Value "value!!"

<#
-- NewPowerShell.txt --
value!!
value!!
#>