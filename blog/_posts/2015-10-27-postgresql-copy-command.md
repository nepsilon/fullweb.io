---
layout: post
title:  "Importing and exporting CSV in PostgreSQL"
permalink: "/postgres-import-export-csv-copy"
date:   2015-10-27 13:15:03 +0800
categories: postgresql, csv, copy, tips
---

Let’s see how to use PostgreSQL to import and export CSV files painlessly with the [COPY command].

{% highlight sql %}

-- Import CSV into table t_words
COPY t_words FROM '/path/to/file.csv' DELIMITER ',' CSV;
-- You can tell quote char with QUOTE
-- and change delimiter with DELIMITER

-- Import CSV into table t_words,
-- telling what columns to use
COPY t_words("name", "count", "def") FROM 'file.csv' DELIMITER ',' CSV; 

-- Export table to a CSV file
COPY t_words TO 'file.csv' DELIMITER ',' CSV HEADER; 

-- Export custom results to a CSV file
COPY (SELECT word, def FROM t_words) TO 'file.csv' CSV;

{% endhighlight %}

[COPY command]: http://www.postgresql.org/docs/9.4/static/sql-copy.html
