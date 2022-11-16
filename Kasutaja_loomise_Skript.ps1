#defineerime muutujad argumentide salvestamiseks
param(
$Kasutajanimi,
$Taisnimi,
$Kontokirjeldus
)
#loome parooli
$KasutajaParool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force
#loome kasutaja parameetrid
New-LocalUser $Kasutajanimi -Password $KasutajaParool -FullName $Taisnimi -Description $Kontokirjeldus