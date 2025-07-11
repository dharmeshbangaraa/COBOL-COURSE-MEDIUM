IDENTIFICATION DIVISION.
       PROGRAM-ID.    PNL-CALC-PROG.
       AUTHOR.        LEGACY TEAM.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT PNL-INPUT ASSIGN TO 'PNLIN.DAT'.
           SELECT PNL-OUTPUT ASSIGN TO 'PNLOUT.DAT'.

       DATA DIVISION.
       FILE SECTION.
       FD  PNL-INPUT.
       01  PNL-IN-REC.
           05  PORTFOLIO-ID      PIC X(08).
           05  TRADE-DATE        PIC X(08).
           05  TRADE-AMT         PIC S9(13)V99 COMP-3.
           05  COST-AMT          PIC S9(13)V99 COMP-3.

       FD  PNL-OUTPUT.
       01  PNL-OUT-REC.
           05  PORTFOLIO-ID      PIC X(08).
           05  TRADE-DATE        PIC X(08).
           05  PNL-AMT           PIC S9(13)V99 COMP-3.

       WORKING-STORAGE SECTION.
       01  WS-PNL-AMT            PIC S9(13)V99 COMP-3.
       01  WS-TEMP-AMT           PIC S9(13)V99 COMP-3.

       PROCEDURE DIVISION.
       MAIN-LOOP.
           OPEN INPUT PNL-INPUT
           OPEN OUTPUT PNL-OUTPUT
           PERFORM UNTIL EOF-FLAG = 'Y'
               READ PNL-INPUT
                   AT END
                       MOVE 'Y' TO EOF-FLAG
                   NOT AT END
                       PERFORM CALC-PNL
                       PERFORM MOVE-TO-OUTPUT
               END-READ
           END-PERFORM
           PERFORM FINALIZE
           CLOSE PNL-INPUT
           CLOSE PNL-OUTPUT
           STOP RUN.

       CALC-PNL.
           COMPUTE WS-PNL-AMT = TRADE-AMT - COST-AMT ROUNDED
*-- Change: Added ROUNDED to ensure P&L is rounded to two decimals as per user story
           .

       MOVE-TO-OUTPUT.
           MOVE PORTFOLIO-ID TO PNL-OUT-REC
           MOVE TRADE-DATE TO PNL-OUT-REC
           MOVE WS-PNL-AMT TO PNL-AMT ROUNDED
*-- Change: Added ROUNDED to MOVE to ensure output is rounded to two decimals
           WRITE PNL-OUT-REC
           .

       FINALIZE.
           EXIT.
           .

[Summary Change Report]
- Added ROUNDED keyword to the COMPUTE statement in CALC-PNL to ensure P&L is rounded to two decimals.
- Added ROUNDED keyword to the MOVE statement in MOVE-TO-OUTPUT for consistent rounding in output.
- Inline comments added for traceability.