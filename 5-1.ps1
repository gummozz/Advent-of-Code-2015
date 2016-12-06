$answer = 0
"" -split '\n' | % {if ($_ -match '(?=.*(.)\1)(?=.*(.*[a|e|i|o|u]){3,})^(?!(?=.*(ab|cd|pq|xy))).*$'){$answer++}};$answer
