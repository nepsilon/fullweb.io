---
layout: post
title:  "Quickly serve files with a local webserver"
permalink: "/serve-files-local-webserver"
date:   2015-07-14 13:15:03 +0800
category: development, tips
tags: share, web server
---

Need to quickly serve files over the network? Or even a full directory? 

Here is how to do with Python, PHP and NodeJs:

{% highlight shell %}

# With Python 2.x
python -m SimpleHTTPServer

# With Python 3.x
python -m http.server

# With PHP
php -S localhost:8000

# With NodeJs
npm install -g http-server 
http-server

{% endhighlight %}
