```
[Full original source code with the following changes:]
* In the FILE SECTION, updated FD for transaction file to include CHANNEL-CODE (via TRNREC.cpy).
* In 2300-GEN-TRANSACTION, added logic to generate CHANNEL-CODE and inline comment: *> Generate CHANNEL-CODE (new).
* In 2320-WRITE-TRAN-RECORD, ensured CHANNEL-CODE is written to output and added inline comment: *> Write CHANNEL-CODE (new).
```