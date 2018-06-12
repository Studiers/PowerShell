# 기본적으로 PHP에서 함수 만들듯이 만들면 된다
# $args는 원래 받는 인자 외에 오는 가변인자? 같은 것이다
function f($a) {
    return $a -eq $args[0];
}

# PowerShell 에서 함수 호출법은 괄호를 사용하지 않고 뒤에 인자를 나열하는 방식으로 한다
$a = f 0 0;

echo $a;