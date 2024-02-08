@echo off

 set dbUser=root
 set dbPassword=121601001
 set backupDir="C:\adminpat\db_backup"
 set mysqldump="C:\Program Files\MariaDB 10.5\bin\mysqldump.exe"
 set mysqlDataDir="C:\Program Files\MariaDB 10.5\data"
 set zip="C:\Program Files\7-Zip\7z.exe"

 :: get date
 for /F "tokens=2-4 delims=/ " %%i in ('date /t') do (
      set yy=%%i
      set mon=%%j
      set dd=%%k
 )

 :: get time
 for /F "tokens=5-8 delims=:. " %%i in ('echo.^| time ^| find "actual" ') do (
      set hh=%%i
      if %%i LSS 10 (
          set hh=0%%i
      )
      set min=%%j
 )

 echo dirName=%yy%%mon%%dd%_%hh%%min%
 set dirName=%yy%%mon%%dd%_%hh%%min%
 
 :: switch to the "data" folder
 pushd %mysqlDataDir%

 :: iterate over the folder structure in the "data" folder to get the databases

 if not exist %backupDir%\%dirName%\ (
      mkdir %backupDir%\%dirName%
 )

 %mysqldump% --host="localhost" --user=%dbUser% --password=%dbPassword% --single-transaction --add-drop-table --databases adminpatdb > %backupDir%\%dirName%\adminpatdb.sql

 %zip% a -tgzip %backupDir%\%dirName%\adminpatdb.sql.gz %backupDir%\%dirName%\adminpatdb.sql

 del %backupDir%\%dirName%\adminpatdb.sql

 :: switch back to the "backup" folder
 cd %backupDir%

 @echo on
 echo DB adminpatdb Respaldada correctamente.
 @echo off
 popd