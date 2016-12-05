$instruction = "bgvyzdsv"

$md5 = new-object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider
$utf8 = new-object -TypeName System.Text.UTF8Encoding
$i = 0
$hash = "nothin"
while (!($hash -match '^00-00-0')) {$i++;$hash = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($instruction + $i)))}
$i
while (!($hash -match '^00-00-00')) {$i++;$hash = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($instruction + $i)))}
$i
