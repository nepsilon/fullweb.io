---
layout: post
title:  "Use Git archive to export your repository"
permalink: "/git-archive-export-repo"
date:   2015-10-06 13:15:03 +0800
categories: shell, git, tips
---

See how to use git archive to export your repository.

For instance to get a copy of the code at a given commit, tag or branch.

Note: it will not include the .git folder, just the code.

{% highlight shell %}

# Create a Zip archive of the latest
# commit on the current branch.
git archive -o latest.zip HEAD 

# Exporting the branch pouet
# as a tarball
git archive -o branch_pouet.tar pouet
# The filetype is inferred from the
# filename, one of tar, tgz, tar.gz, zip

# By default git outputs on stdout
# Convenient for piping to anything:
git archive master | bzip2 | ssh user@host "cat > master.bz"

{% endhighlight %}
