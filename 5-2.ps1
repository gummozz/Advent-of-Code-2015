$answer = 0
"asdasdasd" -split '\n' | % {if ($_ -match '(..).*\1' -and $_ -match '(.).\1'){$answer++}};$answer
