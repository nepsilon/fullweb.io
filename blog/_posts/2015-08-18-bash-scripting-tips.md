---
layout: post
title:  "More efficient shell scripting"
permalink: "/bash-scripting-tips"
date:   2015-08-18 13:15:03 +0800
categories: shell, scripting, tips
---

3 Bash best practices when writing a script:

{% highlight shell %}

# Exit immediately if a command
# exits with a non-zero status
set -e

# Display the next command
# to be executed
set -x

# Use the right shebang, this is
# more portable than #!/bin/bash
#!/usr/bin/env bash

{% endhighlight %}

And here is some more [best practices] to bookmark and keep under your pillow.

[best practices]: http://mywiki.wooledge.org/BashPitfalls
