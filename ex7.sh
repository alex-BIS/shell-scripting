#!/bin/bash

mkdir -p old
cp {1..9}* old/
rename -f "s/\.txt/\.old/" old/*
