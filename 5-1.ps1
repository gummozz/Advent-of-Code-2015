$answer = 0
"" -split '\n' | % {if ($_ -match '(.)\1' -and $_ -match '(.*[a|e|i|o|u]){3,}' -and $_ -notmatch '(ab|cd|pq|xy)'){$answer++}};$answer
