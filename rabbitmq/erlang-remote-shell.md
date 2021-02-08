---
title: Erlang Remote Shells
created: 2020-04-17T13:59:50 EDT
modified: 2020-04-17T16:21:54 EDT
tags: []
---

List the nodes that are connected to epmd on the current node.
```
net_adm:names() 
```
or

``
erlang:system_info(dist).
erlang:system_info(dist_ctrl).
``

Another option is to use non-embedded node and make decision to remote into
another node after startup (i.e. without having used -remsh) by using CTL-G
and doing:

  rpettit>erl -name n1 -setcookie foo
  Erlang (BEAM) emulator version 5.3 [source]

  Eshell V5.3  (abort with ^G)
  (n1@REDACTED)1> net_adm:ping('n2@REDACTED').
  pong
  (n1@REDACTED)2>  % I hit CTL-G here
  User switch command
   --> r 'n2@REDACTED'
   --> j
     1  {}
     2  {shell,start,[]}
     3* {'n2@REDACTED',shell,start,[]}
   --> c 3
  Eshell V5.3  (abort with ^G)
  (n2@REDACTED)1> % on remote node, about to switch back
  (n2@REDACTED)1> % I hit CTL-G here
  User switch command
   --> c 2    % I hit enter twice here (to get prompt to print)
        
  (n1@REDACTED)2> q().
  ok

You can start multiple remote shells and juggle sessions that way (just make
sure you pay attention to what node you are on before running arbitrary
commands :-)

<http://erlang.org/pipermail/erlang-questions/2006-August/021974.html>

#### List loaded applications

```
application:loaded_applications().
```

---
vim: ft=markdown:
