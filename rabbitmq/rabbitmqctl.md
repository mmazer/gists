---
title: Using rabbitmqctl
created: 2020-04-13T13:49:33 EDT
modified: 2020-04-16T16:40:57 EDT
tags: []
---

##### View vhosts

    rabbitmqctl list_vhosts

##### View RabbitMQ queues/messages

    rabbitmqctl list_queues name messages consumers

##### View RabbitMQ permissions

    rabbitmqctl list_permissions -p /mmazer/freshbooks/live

---
vim: ft=markdown:
