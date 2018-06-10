# Get-Help <function name>
# * 도움말을 얻을 때 사용한다
Get-Help Set-Location

# <object> | Get-Member
# * 해당 객체의 타입과 속성들을 가져오기 위해 사용한다
1 | Get-Member

# echo <const var | var name>
# * 어떤 객체를 출력해준다
$a = 1; echo 1; echo "1"; echo $a;

# <cmd line>; <cmd line>
# * 하나의 라인의 여러 명령을 써주고 싶다면 C에서 그러했듯이 ;으로 구분해주면 된다
$a = 1; echo $a