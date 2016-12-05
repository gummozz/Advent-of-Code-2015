$instructions = "((((()(()("
$floor = 0
$instructions.ToCharArray() | % {switch($_){"("{$floor++}")"{$floor--}}}
$floor
$floor = 0
for ($i = 0;$i -lt $instructions.Length;$i++) {

    if ($floor -lt 0) {$i;break}
    switch($instructions[$i]){

        "("{$floor++}
        ")"{$floor--}

    }
}
