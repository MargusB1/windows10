Windowsis Skriptimine
=
Kasutaja loomine
-
[Originaalse kasutaja tegemine](https://github.com/MargusB1/windows10/blob/master/kasutaja_loomine.ps1)

[Rohkemate funktsioonidega kasutaja loomine](https://github.com/MargusB1/windows10/blob/master/Kasutajaloomine_%C3%9CL1.ps1)

[Kasutaja loomise parameetrid](https://github.com/MargusB1/windows10/blob/master/Kasutaja_loomise_Skript.ps1)


Kasutaja kustutamine
-
[Kasutaja kustutamine](https://github.com/MargusB1/windows10/blob/master/Kasutaja_kustutamine.ps1)

Näide kasutaloomise skriptist
-
```
$KasutajaParool = ConvertTo-SecureString "qwerty" -AsPlainText -Force
New-LocalUser "kasutaja1" -Password $KasutajaParool -FullName "Esimene kasutaja" -Description "Local Acount - kasutaja1"
```

Lõpuselgitus
-
See on selgitus, mida ma kirjutan testimise jaoks. 
Tegemist on windowsi skriptimisega, mille eesmärk on luua kasutaja ning kustutada see hiljem ära, kasutades Windows PowerShell ISE.
