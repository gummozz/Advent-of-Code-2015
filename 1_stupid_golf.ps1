#input goes inbetween ""
$f=0;"".ToCharArray()|%{switch($_){"("{$f++}")"{$f--}}};$f;$f=0;for($i=0;$i-lt"".Length;$i++){if($f-lt0){$i;break}};switch("".ToCharArray()[$i]){"("{$f++}")"{$f--}}
