---
layout: post
title:  "4 npm tips to know more about a package"
permalink: "/npm-nodejs-tips"
date:   2015-08-11 13:15:03 +0800
categories: npm, nodejs, tips
---

Node `npm` is certainly one of the best package manager out there. Here are some awesome tips you may not know:

{% highlight shell %}

# Find a module owner
npm owner ls packagename

# Open the GitHub issues page
npm bug packagename

# Install packages as dependencies
npm install packagename --save

# Install packages as dev env dependencies
npm install packagename --dev-save

{% endhighlight %}
