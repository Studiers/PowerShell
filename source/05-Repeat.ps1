$colors = "Red","Green","Blue"

# for
for ($i = 0; $i -le $colors.Length; ++$i) {
    echo $colors[$i];
}

# foreach
# 이 방식이 개인적으로 가장 마음에 든다
foreach ($color in $colors) {
    echo $color;
}

# ForEach-Object
# 가장 PowerShell 스러운 것 같다
$colors | ForEach-Object {echo $_}
ForEach-Object -InputObject $colors -Process {
    echo $_;
}