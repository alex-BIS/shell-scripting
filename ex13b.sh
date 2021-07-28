#!/bin/sh

find / -name "*.html" -print | grep "/index.html$"
find / -name "*.html" -print | grep "/contents.html$"

HTML_FILES_BACKTICK=`find / -name "*.html" -print`
echo "$HTML_FILES_BACKTICK" | grep "/index.html$"
echo "$HTML_FILES_BACKTICK" | grep "/contents.html$"

HTML_FILES_DOLLAR=$(find / -name "*.html" -print)
echo "$HTML_FILES_DOLLAR" | grep "/index.html$"
echo "$HTML_FILES_DOLLAR" | grep "/contents.html$"
