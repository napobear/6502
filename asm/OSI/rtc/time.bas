 10 REM SHOW TIME FROM INTERRUPT ROUTINE
 20 REM READ DATA FOR ML PROGRAM
 30 PRINT "INSTALLING ML CODE"
 40 I=0
 50 READ N
 60 IF N = -1 THEN 100
 70 POKE 30000+I,N
 80 I = I + 1
 90 GOTO 50
100 DIM MN$(12)
101 FOR I = 1 TO 12
102 READ MN$(I)
104 NEXT I
105 REM WRITE ADDRESS OF INIT ROUTINE $7537 TO $11,$12
110 POKE 11,55
120 POKE 12,117
130 REM AND CALL IT
140 X = USR(0)
150 PRINT "DO YOU WANT TO SET"
160 INPUT "THE CLOCK (Y/N)";A$
170 IF A$ <> "Y" THEN 300
180 INPUT "HOURS (0-23)";H
190 INPUT "MINUTES (0-59)";M
200 INPUT "SECONDS (0-59)";S
210 INPUT "YEAR (0-99)";Y
220 INPUT "MONTH (1-12)";N
230 INPUT "DAY (1-32)";D
240 POKE 30001,S
250 POKE 30002,M
260 POKE 30003,H
270 POKE 30004,D
280 POKE 30005,N
290 POKE 30006,Y
300 S = PEEK(30001)
310 M = PEEK(30002)
320 H = PEEK(30003)
330 D = PEEK(30004)
340 N = PEEK(30005)
350 Y = PEEK(30006)
360 PRINT RIGHT$(STR$(H),2);":";
370 PRINT RIGHT$(STR$(M),2);":";
380 PRINT RIGHT$(STR$(S),2);" ";
390 PRINT RIGHT$(STR$(D),2);"/";
400 PRINT MN$(N);"/20";
410 PRINT RIGHT$(STR$(Y),2)
420 IF S = PEEK(30001) THEN GOTO 420
430 GOTO 300
440 REM ML PROGRAM
1000 DATA 0,0,0,0,0,0,0,120
1010 DATA 169,76,141,192,1,169,103,141
1020 DATA 193,1,169,117,141,194,1,169
1030 DATA 0,141,48,117,141,49,117,141
1040 DATA 50,117,141,51,117,169,1,141
1050 DATA 52,117,141,53,117,141,54,117
1060 DATA 169,5,141,1,192,88,96,72
1070 DATA 44,0,192,238,48,117,173,48
1080 DATA 117,201,98,208,106,169,0,141
1090 DATA 48,117,238,49,117,173,49,117
1100 DATA 201,60,208,91,169,0,141,49
1110 DATA 117,238,50,117,173,48,117,56
1120 DATA 233,16,141,48,117,173,50,117
1130 DATA 201,60,208,67,169,0,141,50
1140 DATA 117,238,51,117,173,48,117,56
1150 DATA 233,24,141,48,117,173,51,117
1160 DATA 201,24,208,43,169,0,141,51
1170 DATA 117,238,52,117,172,53,117,136
1180 DATA 173,52,117,217,225,117,144,23
1190 DATA 169,1,141,52,117,238,53,117
1200 DATA 173,53,117,201,13,208,8,169
1210 DATA 1,141,53,117,238,54,117,104
1220 DATA 64,31,28,31,30,31,30,31
1230 DATA 31,30,31,30,31,-1
1240 REM NAMES OF MONTHS
1250 DATA "JAN","FEB","MAR","APR","MAY","JUN"
1260 DATA "JUL","AUG","SEP","OCT","NOV","DEC"
