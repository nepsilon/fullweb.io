---
layout: post
title:  "Make your webpages faster with Resource Hints"
permalink: "/fast-webpage-resource-hints"
date:   2015-10-20 13:15:03 +0800
categories: web, html, tips
---

Make your web pages faster with [Resource Hints] link tags!

They are a great and simple way to tell the browser you need other resources for an optimal user experience. 

The [browser support] is already pretty good to start using them today.

{% highlight html %}

<!-- pre-DNS resolve a domain -->
<link rel="dns-prefetch" href="//widget.com"> 

<!-- pre-connect to a domain HTTP endpoint -->
<link rel="preconnect" href="//cdn.example.com"> 

<!-- pre-fetch a resource, here an
     image needed on the page -->
<link rel="prefetch" href="//example.com/logo.jpg" as="image"> 

<!-- pre-render a web page, here for
     the next page of an article -->
<link rel="prerender" href="//example.com/next-page.html">

{% endhighlight %}


[Resource Hints]: http://www.w3.org/TR/resource-hints/
[browser support]: http://caniuse.com/#search=resource%20hints
