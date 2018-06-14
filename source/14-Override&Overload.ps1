class Person {
    [void] talk() {
        Write-Host "first talk method"
    }

    [void] talk([string] $toTalk) {
        Write-Host "I wiil talk '$toTalk'"
        Write-Host "second talk method"
    }
}

$person = [Person]::new()

$person.talk()
$person.talk("Hello world!!")

# Refernce
# https://www.sapien.com/blog/2016/03/16/inheritance-in-powershell-classes/