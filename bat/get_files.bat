
@echo off

set JOBRUN_DIR=C:/
set JOBRUN_FOLDER=workspace/CURE_ETL_CODE/
set JOB_DIR=%JOBRUN_DIR%/%JOBRUN_FOLDER%/

REM ******************
REM   KETTLE Library
REM ******************
REM 

SET JOB_FOLDER=PROCESS_XML
SET JOB_PORPERTIES=PROCESS_XML.properties
SET MAIN_JOB=GetFiles\GetFiles.kjb
SET JOB=%JOB_DIR%/%JOB_FOLDER%/KETTLE/%MAIN_JOB%

SET PENTAHO_HOME=C:\Pentaho-4.3\data-integration

SET KETTLE_HOME=C:\Pentaho-4.3\data-integration

SET PROPERTIES=%JOB_DIR%/%JOB_FOLDER%/CONF/%JOB_PORPERTIES%
echo PROPERTIES=%PROPERTIES%

cd /d %PENTAHO_HOME%

call kitchen.bat /file:%JOB% /param:PROPERTIES="%PROPERTIES%" -level=Detailed -log=C:\Pentaho-4.3\data-integration\logs\get_files.log

cd /d %JOB_DIR%/%JOB_FOLDER%/BAT
