---
layout: post
title:  "Using Gulp with custom flags"
permalink: "/gulp-custom-flags"
date:   2015-09-29 13:15:03 +0800
categories: web, gulp, tips
---

If you use Gulp as build tool for your web projects, you might have wondered how to pass custom flags to your tasks from CLI.

Well, with a little help from the node package `minimist`, you can add this neat feature!

{% highlight javascript %}

// gulpfile.js
var gulp = require('gulp'); 
var options = require('minimist')(process.argv); 

gulp.task('show-flags', function () { 
  console.log(options); 
});

{% endhighlight %}

{% highlight shell %}

# '_' contains unparsed arg
gulp show-flags -abc --foo bar --bar=foo --zoo 
> { _: [...],   a: true, 
  b: true, 
  c: true, 
  foo: 'bar', 
  bar: 'foo', 
  zoo: true }

{% endhighlight %}

Usage of flag options is up to you to define your tasks. It's now time to substitute your old:

```gulp build-dev with gulp build --env=dev```



*Post contributed by [Vincent Zhang]*


[Vincent Zhang]: https://github.com/happiefire
