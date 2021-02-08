---
title: Erlang remote shell to rabbit node
created: 2020-04-17T14:01:40 EDT
modified: 2020-04-17T16:44:09 EDT
tags: []
---

```
erl -sname mmazer -setcookie <COOKIE> -remsh 'rabbit@DOMAIN'
```

To get the cookie:

```
rabbitmqctl eval "erlang:get_cookie()."
```

You can also check under `/var/lib/rabbitmq`

---
vim: ft=markdown:
