---
title: CLOSE_WAIT
created: 2020-04-17T08:44:36 EDT
modified: 2020-04-17T09:41:20 EDT
tags: []
---

> CLOSE_WAIT - Indicates that the server has received the first FIN signal from
> the client and the connection is in the process of being closed. This means
> the socket is waiting for the application to execute close(). A socket can be
> in CLOSE_WAIT state indefinitely until the application closes it. Faulty
> scenarios would be like a file descriptor leak: server not executing close()
> on sockets leading to pile up of CLOSE_WAIT sockets.


---
vim: ft=markdown:
