---
layout: post
title:  "3 useful ways to use Wget"
permalink: "/smart-wget-usage"
date:   2015-09-22 13:15:03 +0800
categories: shell, wget, tips
---

GNU’s `wget` is a command line tool to download files over HTTP(S) and FTP. 

While `curl` is great to send custom requests, it lacks a recursive mode to download all the resources linked to a page or domain.

This is where Wget is much useful.

{% highlight shell %}

# Copy a whole site locally,
# including images, css, js
# and converting links
wget -p -m -k fullweb​.io
 
# Check for 404 links
wget --spider your-url-list.txt
# give it an HTML page with -F
wget --spider -F you-webpage.html
 
# Accept (-A) or reject (-R) some files
# here only keeping images from the site
wget -p -A png,jpg,jpeg,gif \ 
        -R html,css,js \ 
        wikipedia​.org

{% endhighlight %}
