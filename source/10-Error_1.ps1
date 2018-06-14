# Try ~ Catch ~
try {
    $value = Read-Host "Enter a value"
    $result = 1 / $value
    Write-Output "1 / $value = $result"
} catch [System.DivideByZeroException] {
    Write-Output "Error Occured.. 1 / $value"
} finally {
    Write-Output "Finally Action"
}