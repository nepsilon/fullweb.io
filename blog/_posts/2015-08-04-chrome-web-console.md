---
layout: post
title:  "7 Chrome web console tips"
permalink: "/chrome-web-console-tips"
date:   2015-08-04 13:15:03 +0800
category: chrome, web, tips
---

There is more than `console.log()` to the Chrome Web Console:

{% highlight shell %}

# Output debug, info, warnings and errors
console.debug('Just so that the dev know') 
console​.info('Here is some info') 
console.warn('This may be a problem') 
console.error('This must not happen')

# Assert results
console.assert(nodeList.length < 500, "NodeList is > 500");

# Ask for breakpoint in code
debugger;

# Output in a table
console.table([[1,2,3], [4,5,6]]) 
console.table([{a:2, b:3}, {a:4, b:5}])

{% endhighlight %}

See other useful commands on the official [documentation page].

[documentation page]: https://developers.google.com/web/tools/chrome-devtools/
