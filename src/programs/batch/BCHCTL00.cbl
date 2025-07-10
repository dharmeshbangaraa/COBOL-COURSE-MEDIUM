```
[Full original source code with the following changes:]
* In the FILE SECTION, updated FD for transaction file to include CHANNEL-CODE (via TRNREC.cpy).
* In 1000-PROCESS-INITIALIZE, updated logic to reference CHANNEL-CODE and added inline comment: *> Reference CHANNEL-CODE (new).
```