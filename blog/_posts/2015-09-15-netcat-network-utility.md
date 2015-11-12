---
layout: post
title:  "Network Power Tool: netcat"
permalink: "/netcat-network-tips"
date:   2015-09-15 13:15:03 +0800
categories: shell, netcat, linux, tips
---

Ever heard of `netcat`? It’s a small network utility to create TCP and UDP connections.

Le’s see how to transfer files with it:

{% highlight shell %}

# Simple file transfer over network:
# run the server with
nc -l 8000 > file_you_receive
# send the file on the client with
cat file_you_send | nc server_ip 8000
 
# Getting fancy, transferring lots of
# small/medium files efficiently:
tar -cf - . | pigz | nc -l 8000
# On the receiving machine:
nc server_ip 8000 > all_your_files.tar.gz
# (pigz is a parallel gzip)
 
# By default netcat uses TCP,
# use UDP with -u
netcat -u -l 8000

{% endhighlight %}
