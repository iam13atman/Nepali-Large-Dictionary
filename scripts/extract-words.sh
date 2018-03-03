#!/usr/bin/bash


grep --only-matching --perl-regexp  "^[^ ]+—" \
  NA2067BS_NepaliBrihatShabdakosh.txt | sed 's/—//g'
