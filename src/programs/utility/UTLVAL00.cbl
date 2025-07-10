```
[Full original source code with the following changes:]
* In the FILE SECTION, updated FD for transaction file to include CHANNEL-CODE (via TRNREC.cpy).
* In 1100-OPEN-FILES, added inline comment: *> Handles CHANNEL-CODE field (new).
* In 2220-CHECK-TRANSACTION-INTEGRITY, 2320-CHECK-TRANSACTION-XREF, 2420-CHECK-TRANSACTION-FORMAT, updated logic to validate CHANNEL-CODE and added inline comments: *> Validate CHANNEL-CODE (new).
```