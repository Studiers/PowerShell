# Initialize Hash Table
$pets = @{Cat = "Nyan"; Horse = "DoYoung"; Dog = "Hell"}

$pets.Remove('Cat')

$pets.Add('Cat', 'Github')
# or
$pets.Cat = 'Github'

$pets.Cat

foreach ($pet in $pets) {
    $pet
}