<#

https://4sysops.com/archives/powershell-psdrive-in-practice/
A PSDrive is a location to a data structure that is managed by a piece of software called a provider

#>

# PSDrive는 Provider라고 불리는 특정 소프트웨어들이 제공하는 자료구조 인가 봅니다
# 그렇다면 PSDrive 들의 목록을 봐봅시다
Get-PSDrive

# 필터링 해볼까요?
Get-PSDrive -PSProvider FileSystem

# 파일 시스템들만 보였을 겁니다, 그러면 레지스트리를 봐보도록 합시다
Get-PSDrive -PSProvider Registry

# 가상 드라이브를 만들어 봅시다
New-PSDrive -PSProvider FileSystem -Name W -Root 'C:\Users\Moreal\Desktop\work'

Set-Location W: