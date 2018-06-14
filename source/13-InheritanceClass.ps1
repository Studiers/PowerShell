class Person {
    [string] $name
    [int] $age
    
    Person([string] $name, [int] $age) {
        $this.name = $name
        $this.age = $age
    }

    [void] talk() {
        # If we use Write-Output function in a function, it won't seem in your powershell
        # so we have to use Method "Write-Host"
        Write-Host "Hi!! I'm Person"
    }
}

# C# sealed class 는 상속 불가하다

class Student : Person {
    [string] $school

    Student([string] $name, [int] $age, [string] $school) : base($name, $age){
        $this.school = $school
    }

    [void] talk() {
        Write-Host "I'm Student"
    }
}

$person = [Person]::new('Moreal', 11)
$student = [Student]::new('Moreal', 11, 'DSM')

$person.talk()

# Write-Output $person.ret()
$student.talk()

# Downcast!!
([Person]$student).talk()

# Refernce
# https://www.sapien.com/blog/2016/03/16/inheritance-in-powershell-classes/