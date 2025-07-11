IDENTIFICATION DIVISION.
       PROGRAM-ID.    RPTPOS00.
       AUTHOR.        REPORT TEAM.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-PNL-AMT            PIC S9(13)V99 COMP-3.
       01  WS-PNL-AMT-DISPLAY    PIC Z(13).99.

       PROCEDURE DIVISION.
       MAIN-REPORT.
           PERFORM 2110-FORMAT-POSITION
           PERFORM 2300-WRITE-SUMMARY
           STOP RUN.

       2110-FORMAT-POSITION.
           MOVE WS-PNL-AMT TO WS-PNL-AMT-DISPLAY ROUNDED
*-- Change: Added ROUNDED to MOVE for display formatting to two decimals
           .

       2300-WRITE-SUMMARY.
           DISPLAY 'Portfolio P&L: ' WS-PNL-AMT-DISPLAY
           .

[Summary Change Report]
- Added ROUNDED keyword to MOVE in 2110-FORMAT-POSITION for display output.
- Inline comment added for traceability.