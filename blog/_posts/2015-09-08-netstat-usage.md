---
layout: post
title:  "Understand your machine network with netstat"
permalink: "/network-netstat-tips"
date:   2015-09-08 13:15:03 +0800
categories: shell, netstat, linux, tips
---

`netstat` has some very neat features we could make use of more often.

Note: Examples here may not apply to BSD based systems.


{% highlight shell %}

# The classic: list local listening
# TCP/UDP ports and their process
sudo netstat -tulpn

# Get a tail -f behaviour with
sudo netstat -c

# Show network transactions including RX/TX and MTU
sudo netstat -i

# Display the routing table
sudo netstat -r

# Show statistics by protocol
sudo netstat -s

{% endhighlight %}
