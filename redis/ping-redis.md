---
title: How to ping redis
created: 2020-04-14T13:40:39 EDT
modified: 2020-04-14T15:04:00 EDT
tags: []
---

Using netcat:

```
(printf "PING\r\n";) | nc localhost 6379 
```

---
vim: ft=markdown:
