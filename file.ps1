$content = [IO.File]::ReadAllText("$HOME\tmp-iosdk-validation\data\data.xlsx")
$content = $content.replace("`n","").replace("`r","")
#$content = $content.replace("\n","").replace("\r","")

$Bytes = [System.Text.Encoding]::Unicode.GetBytes($content)
$Encode =[Convert]::ToBase64String($Bytes)
#$Encode
$JSON = '{"file":"'+$Encode+'"}'

$JSON
$URL = "http://localhost:3280/api/v1/web/guest/iosdk/import"
$CHECK = "ISPXNB32R82Y766F"
$HEAD = "Content-Type: application/json"

$check = Invoke-RestMethod -Method Post -Uri $URL -Body $JSON -ContentType 'application/json' -Debug -Verbose
$check
#Invoke-WebRequest -Method Get -Uri $URL -ContentType 'application/json' -Body $JSON -Debug -Verbose
# | Select-String -Pattern $CHECK 
