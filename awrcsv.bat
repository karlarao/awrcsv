@echo off
if not exist csv mkdir csv 
if not exist csv\c1-Basic                mkdir csv\c1-Basic 
if not exist csv\c2-Host                 mkdir csv\c2-Host 
if not exist csv\c3-Stats-Events         mkdir csv\c3-Stats-Events 
if not exist csv\c4-SQL                  mkdir csv\c4-SQL
if not exist csv\c5-Buffers-Enq-Latches  mkdir csv\c5-Buffers-Enq-Latches
if not exist csv\c6-IO-Segment-activity  mkdir csv\c6-IO-Segment-activity 
if not exist csv\c7-Oracle-memory        mkdir csv\c7-Oracle-memory 
if not exist csv\c8-RAC                  mkdir csv\c8-RAC
if not exist csv\c9-Perf-report          mkdir csv\c9-Perf-report 
perl awrcsv.pl -I -C 1 -d AWR -o csv\c1-Basic               -p sp -s lst
perl awrcsv.pl -I -C 2 -d AWR -o csv\c2-Host                -p sp -s lst
perl awrcsv.pl -I -C 3 -d AWR -o csv\c3-Stats-Events        -p sp -s lst
perl awrcsv.pl -I -C 4 -d AWR -o csv\c4-SQL                 -p sp -s lst
perl awrcsv.pl -I -C 5 -d AWR -o csv\c5-Buffers-Enq-Latches -p sp -s lst
perl awrcsv.pl -I -C 6 -d AWR -o csv\c6-IO-Segment-activity -p sp -s lst
perl awrcsv.pl -I -C 7 -d AWR -o csv\c7-Oracle-memory       -p sp -s lst
perl awrcsv.pl -I -C 8 -d AWR -o csv\c8-RAC                 -p sp -s lst
perl awrcsv.pl -I -C 9 -d AWR -o csv\c9-Perf-report         -p sp -s lst
echo.
echo INFORMATION:
echo.
echo Category  1 CSV files written to csv\c1
echo Category  2 CSV files written to csv\c2
echo Category  3 CSV files written to csv\c2 etc.
echo.
echo AWRCSV.BAT Done.
