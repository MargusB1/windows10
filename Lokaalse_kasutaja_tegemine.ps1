# kasutaja andmed käsurea parameetrid
param(
$Kasutajanimi,
$TaisNimi,
$KontoKirjeldus
)
# loome kasutajale parool
$KasutajaParool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force
# lisame kasutaja vastavate andmetega
New-LocalUser "$Kasutajanimi" -Password $KasutajaParool -FullName "$Taisnimi" -Description "$Kontokirjeldus"