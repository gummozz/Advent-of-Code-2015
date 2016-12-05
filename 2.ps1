$instructions = "" -split '\n'
$answer = 0
$ribbon = 0
foreach ($instruction in $instructions) {

    [int]$l = $instruction.split("x")[0]
    [int]$w = $instruction.split("x")[1]
    [int]$h = $instruction.split("x")[2]
    
    $l2 = ($l*$w)
    $w2 = ($w*$h)
    $h2 = ($h*$l)

    $al = (2*$l*$w)
    $aw = (2*$w*$h)
    $ah = (2*$h*$l)

    $answer += $al + $aw + $ah + ([int]($l2,$w2,$h2 | Sort-Object | select -First 1))
    $l,$w,$h | Sort-Object | select -First 2 | % {$ribbon += (2*$_)}
    $ribbon += $l*$w*$h
    
}

$answer
$ribbon
