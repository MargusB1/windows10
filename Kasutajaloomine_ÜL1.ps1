#vaatab kas error on
try{
#Küsime konto info
$Eesnimi = Read-Host -Prompt "Sisesta oma eesnimi"
$Perenimi = Read-Host -Prompt "Sisesta oma Perenimi"
$Kasutajanimi = $Eesnimi + "." + $Perenimi
$Taisnimi = $Eesnimi + " " + $Perenimi
Write-Output "Kasutaja nimi on: $($Kasutajanimi.ToLower())"
$Kontokirjeldus = Read-Host -Prompt "Sisesta konto kirjeldus" 
#Loob parooli
$Parool = [System.Web.Security.Membership]::GeneratePassword(8,2)
Write-Output "Su parool on: $Parool"

"$Kasutajanimi;$Parool" | Out-File -FilePath C:\Users\Administrator\Desktop\Skriptimine\kasutajanimi.txt -Append


#loome paarooli
$KasutajaParool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force
#Teeme konto
New-LocalUser $Kasutajanimi.ToLower() -Password $KasutajaParool -FullName $Taisnimi -Description $Kontokirjeldus
}
Catch{
Write-Host "Midagi läks valesti"
}

