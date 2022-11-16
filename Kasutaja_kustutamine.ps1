$Eesnimi = Read-Host -Prompt "Sisesta oma eesnimi"
$Perenimi = Read-Host -Prompt "Sisesta oma Perenimi"
$Kasutajanimi = $Eesnimi + "." + $Perenimi
$Taisnimi = $Eesnimi + " " + $Perenimi
try{
    Remove-LocalUser $Kasutajanimi -ErrorAction Stop
}
catch{
    echo "Midagi läks valesti"
    Exit
}
echo "Kasutaja on kustutatud"