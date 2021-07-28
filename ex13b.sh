#!/bin/sh

# not very efficient as it calls external prog. find twice
find / -name "*.html" -print | grep "/index.html$"
find / -name "*.html" -print | grep "/contents.html$"

# saves results of the find, using backticks to carry out the command
HTML_FILES_BACKTICK=`find / -name "*.html" -print`
echo "$HTML_FILES_BACKTICK" | grep "/index.html$"
echo "$HTML_FILES_BACKTICK" | grep "/contents.html$"

# saves results of the find, using $ to carry out the command
HTML_FILES_DOLLAR=$(find / -name "*.html" -print)
echo "$HTML_FILES_DOLLAR" | grep "/index.html$"
echo "$HTML_FILES_DOLLAR" | grep "/contents.html$"
