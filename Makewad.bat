 @echo off
 echo Creating rpg PK3.
 set ProjName=MonRpg
 echo Ready to Start.
 
 echo Step 1: Packing
 echo Packing...
 cd Monkeys-Doom-RPG
 7z a -r -ssw -tzip ..\%ProjName%n.pk3 -xr!.git  -x!*.bat "*" 
 echo Done packing.
 
 echo Step 2: Replace old version
 echo Replacing old version.
 cd ..
 del %ProjName%.pk3
 ren %ProjName%n.pk3 %ProjName%.pk3
 echo Done replacing.
 
 
 echo Creating Monsterpack PK3.
 set ProjName2=MonRMon
 echo Ready to Start.
 
 echo Step 1: Packing
 echo Packing...
 cd Monkeys-RPG-Monsters
 7z a -r -ssw -tzip ..\%ProjName2%n.pk3 -xr!.git  -x!*.bat "*" 
 echo Done packing.
 
 echo Step 2: Replace old version
 echo Replacing old version.
 cd ..
 del %ProjName2%.pk3
 ren %ProjName2%n.pk3 %ProjName2%.pk3
 echo Done replacing.
 
:Packingdone
 echo Done.