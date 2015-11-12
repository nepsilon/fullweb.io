---
layout: post
title:  "4 Bash and Zsh tips you’ll use everyday"
permalink: "/bash-zsh-tips"
date:   2015-07-21 13:15:03 +0800
category: bash, zsh, tips
---

A mix of bash/zsh goodies for this week!

{% highlight shell %}

# Expansion: same as mv file.txt file.md
mv file.{txt,md}

# Back to your previous working directory
cd -

# Jump to your home directory
cd

# Use previous arguments value with !$
mkdir -p /var/www/site.com/very/long/path/folder 
cd !$

{% endhighlight %}
