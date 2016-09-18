 @echo off
 set ProjName=MonRpg
 echo Ready to Start.
 
 echo Step 1: Packing
 echo Packing...
 cd %cd%
 7z a -r -ssw -tzip %ProjName%n.pk3 -xr!.git -x!*.bat -x!MonRpg.pk3 "*" 
 echo Done packing.
 
 echo Step 2: Replace old version
 echo Replacing old version.
 cd %cd%
 del %ProjName%.pk3
 ren %ProjName%n.pk3 %ProjName%.pk3
 echo Done replacing.
 
:Packingdone
 echo Done.