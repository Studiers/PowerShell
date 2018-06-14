# Error Controll
try {
    $value = Read-Host "Enter a value"
    $result = 1 / $value
    Write-Output "1 / $value = $result"
} catch [System.DivideByZeroException], [System.Exception] {
    <#
        Get Error 

        $_.Exception.Message

        $error[0].Get-Message // Get Error Record
    #>

    Write-Output $_.Exception.Message
} finally {
    Write-Output "Finally Action"
}