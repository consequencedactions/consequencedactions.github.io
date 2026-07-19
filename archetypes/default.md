+++
date = '{{ .Date }}'
draft = true
summary = 'summary that will appear in the main page, if not defined the post content will be used with format'
title = '{{ replace .File.ContentBaseName "-" " " | title }}'
+++
