$instructions = ">>^>>^>><<v>".ToCharArray()
$x = 0
$y = 0
$roboX = 0
$roboY = 0
[array]$locations = $null
[array]$roboLocations = $null
for ($i = 0;$i -lt $instructions.Length;$i++) {


    if ($i % 2 -eq 0){
        switch ($instructions[$i]) {

        "^" {$y++}
        "v" {$y--}
        ">" {$x++}
        "<" {$x--}

        }
        if (!($x -eq 0 -and $y -eq 0)){
            [array]$locations += [string]$x + "," + [string]$y
        }
    }

    else{
        switch ($instructions[$i]) {

        "^" {$roboY++}
        "v" {$roboY--}
        ">" {$roboX++}
        "<" {$roboX--}

        }
        if (!($roboX -eq 0 -and $roboY -eq 0)){
            [array]$locations += [string]$roboX + "," + [string]$roboY
        }
    }


}

($locations | Sort-Object -Unique).Count + 1
