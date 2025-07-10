```
[Full original source code with the following changes:]
* In the FILE SECTION, updated FD for transaction file to include CHANNEL-CODE (via TRNREC.cpy).
* In 2000-PROCESS and 2100-LOAD-HISTORY, updated logic to handle CHANNEL-CODE and added inline comments: *> Handle CHANNEL-CODE (new).
```