---
layout: post
title:  "Batch rename files with the shell"
permalink: "/shell-script-rename-files"
date:   2015-11-02 13:15:03 +0800
categories: shell, rename, tips
---

A short script this week to replace spaces in filenames in a given folder.

Spaces will be replaced by underscores `_`:

{% highlight shell %}

# Looping over files,
# forging new filename
# and then renaming it.
for oldname in * 
do 
  newname=`echo $oldname | sed -e 's/ /_/g'` 
  mv "$oldname" "$newname" 
done
{% endhighlight %}

This one remove the spaces, only the sed expression is different:
{% highlight shell %}

for oldname in * 
do 
  newname=`echo $oldname | sed -e 's/ //g'` 
  mv "$oldname" "$newname" 
done
{% endhighlight %}

And this one lowercase all letters in addition to removing spaces:
{% highlight shell %}

for oldname in * 
do 
  newname=`echo $oldname | sed -e 's/ //g' | tr '[:upper:]' '[:lower:]'` 
  mv "$oldname" "$newname" 
done

{% endhighlight %}

__Note:__ This script is not recursive and will not rename files inside sub-directories.
