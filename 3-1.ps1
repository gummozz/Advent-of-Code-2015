$instructions = ">^>>^>><<v>".ToCharArray()
$x = 0
$y = 0
[array]$locations = $null
foreach ($instruction in $instructions) {

    switch ($instruction) {

    "^" {$y++}
    "v" {$y--}
    ">" {$x++}
    "<" {$x--}

    }

    [array]$locations += [string]$x + "," + [string]$y
}

($locations | Sort-Object -Unique).Count
