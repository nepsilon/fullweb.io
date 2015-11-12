---
layout: post
title:  "Find files with the locate command"
permalink: "/better-locate-usage-linux"
date:   2015-09-01 13:15:03 +0800
categories: shell, locate, linux, tips
---

Following on last week [grep tips], let’s see how to use `locate` to search for files on your Linux machine.

The `locate` command is faster than `find` because it uses a database, whereas `find` will scan the file system every time.

{% highlight shell %}

# locate uses a database
# you first need to build it with:
sudo updatedb

# Search recursively into a folder
locate pattern folder/

# If no folder specified
# search is system-wide, ex:
locate "*.py"

# Filter out error msg with -q
# (permission denied, etc)

locate -q "*.py"
# Only count pattern occurrences
locate -c pattern

# Search is case sensitive
# use -i to disable it
locate -i "*.hTmL"

{% endhighlight %}

[grep tips]: /blog/better-grep-usage
