Class Student {
    [String] $name
    [Int32] $age

    # private static variable
    hidden static [Int32] $studentCnt = 0

    Student([String] $name, [Int32] $age) {
        $this.age = $age
        $this.name = $name
    }

    [Int32] getCount() {
        return $this.studentCnt
    }
}

$student = New-Object Student -ArgumentList @("Moreal", 11)
$student = New-Object Student "Moreal", 11
$student = [student]::new("MOREAL", 11)

# 아무것도 출력되지 않는다!!
Write-Output $student.studentCnt

# Getter를 만들어서 private를 Get 했다!!
Write-Output $student.getCount()