---
layout: post
title:  "Search files better with grep"
permalink: "/better-grep-usage"
date:   2015-08-25 13:15:03 +0800
categories: shell, grep, tips
---

See how to use grep to find what you’re looking for in files:

{% highlight shell %}

# grep is case sensitive by default
# use -i to turn this off
grep -i pattern file

# Search recursively into a folder
grep pattern -r folder

# Display 5 lines after/before each match
grep -C 5 pattern file

# Filter out a pattern
grep -v pattern file

# Only count pattern occurrences
grep -c pattern file

# Only list the files containing the pattern
grep -l pattern file

{% endhighlight %}
