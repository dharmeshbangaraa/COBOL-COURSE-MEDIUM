01  PORTVAL-RECORD.
           05  PORTFOLIO-ID         PIC X(08).
           05  TRADE-DATE           PIC X(08).
           05  PNL-AMT              PIC S9(13)V99 COMP-3.
*-- Change: Confirmed PNL-AMT is defined with two decimals (V99) for DB2 storage as required

[Summary Change Report]
- Verified PNL-AMT field is defined as PIC S9(13)V99 COMP-3, matching DB2 DECIMAL(15,2) requirement.
- Inline comment added for traceability.