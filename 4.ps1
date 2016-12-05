$instruction = "bgvyzdsv"

$md5 = new-object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider
$utf8 = new-object -TypeName System.Text.UTF8Encoding
$i = 0
$hash = "nothin"
while (!($hash.Replace("-",'') -match '^00000')) {$i++;$hash = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($instruction + $i)))}
$i
while (!($hash.Replace("-",'') -match '^000000')) {$i++;$hash = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($instruction + $i)))}
$i
