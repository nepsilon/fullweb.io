---
layout: post
title:  "Productivity boost with shell aliases"
permalink: "/shell-alias"
date:   2015-10-13 13:15:03 +0800
categories: shell, bash, zsh, alias, tips
---

Using aliases to give commands useful options by default is a good way to boost productivity. Here are 5 aliases to put in your `~/.bashrc` or `~/.zshrc` to keep them permanently.

{% highlight shell %}

# ls: adding colors, verbose listing
# and humanize the file sizes:
alias ls="ls --color -l -h" 

# grep: color and show the line
# number for each match:
alias grep="grep -n --color" 

# mkdir: create parent directories:
alias mkdir="mkdir -pv" 

# ping: stop after 5 pings:
alias ping="ping -c 5" 

# curl: only display HTTP header:
alias HEAD="curl -I"
# this create a new HEAD command

{% endhighlight %}
