---
layout: post
title:  "Using Vim versioning to backup files"
permalink: "/vim-versioning-backup"
date:   2015-07-07 13:15:03 +0800
category: vim, tips
tags: backup
---

Not using versioning on your configuration files and editing them with Vim?

Use Vim’s `backup` option to automatically keep a copy of past versions:

{% highlight vim %}

"Turn on backup option
set backup

"Where to store backups
set backupdir=~/.vim/backup//

"Make backup before overwriting the current buffer
set writebackup

"Overwrite the original backup file
set backupcopy=yes

"Meaningful backup name, ex: filename@2015-04-05.14:59
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")

{% endhighlight %}
