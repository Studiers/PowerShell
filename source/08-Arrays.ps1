# Initialize Empty Array
$array = @()

# Initialize Array
$array = @(1,2,3,4)

# Remove Element
$array = @($array[0], $array[1], $array[3])

# Multi Dimensional
$rows = @(1,2,3), @(4,5,6), @(7,8,9)

foreach($row in $rows) {
    foreach($el in $row) {
        $el
    }
}