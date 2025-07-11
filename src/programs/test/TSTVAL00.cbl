IDENTIFICATION DIVISION.
       PROGRAM-ID.    TSTVAL00.
       AUTHOR.        QA TEAM.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  TEST-CASE-ID           PIC 9(04).
       01  TEST-TRADE-AMT         PIC S9(13)V99 COMP-3.
       01  TEST-COST-AMT          PIC S9(13)V99 COMP-3.
       01  EXPECTED-PNL           PIC S9(13)V99 COMP-3.
       01  ACTUAL-PNL             PIC S9(13)V99 COMP-3.
       01  TEST-RESULT            PIC X(10).

       PROCEDURE DIVISION.
       MAIN-TEST.
           PERFORM 2100-EXECUTE-TEST
           PERFORM 2600-VALIDATE-RESULTS
           STOP RUN.

       2100-EXECUTE-TEST.
           COMPUTE ACTUAL-PNL = TEST-TRADE-AMT - TEST-COST-AMT ROUNDED
*-- Change: Added ROUNDED to match production logic for rounding to two decimals
           .

       2600-VALIDATE-RESULTS.
           IF ACTUAL-PNL = EXPECTED-PNL
               MOVE 'PASS' TO TEST-RESULT
           ELSE
               MOVE 'FAIL' TO TEST-RESULT
           END-IF
           DISPLAY 'Test Case: ' TEST-CASE-ID ' Result: ' TEST-RESULT
           .

[Summary Change Report]
- Added ROUNDED keyword to COMPUTE in 2100-EXECUTE-TEST to ensure test matches new rounding logic.
- Inline comment added for traceability.