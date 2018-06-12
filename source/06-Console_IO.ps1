$name = Read-Host "Please Insert your name"

# 약간은 PHP 같은 느낌이다../ 포매팅 부분에서
Write-Output "Hello!! $name"

# 추가적인 정보
"$(1+2)" # [System.String] "3"
'$(1+2)' # [System.String] "$(1+2)"