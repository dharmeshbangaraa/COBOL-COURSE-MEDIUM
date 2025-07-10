```
[Full original source code with the following changes:]
* In the FILE SECTION, updated FD for transaction file to include CHANNEL-CODE (via TRNREC.cpy).
* In 1100-OPEN-FILES, added inline comment: *> Handles CHANNEL-CODE field (new).
* In 2200-PROCESS-TRANSACTIONS, updated logic to read and process CHANNEL-CODE, and added inline comment: *> Processing CHANNEL-CODE for reporting (new).
* Any WRITE/READ/REPORT statements involving transaction records updated to include CHANNEL-CODE.
```