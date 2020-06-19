#!/bin/bash

# Copyright (c) 2013 Artem Shinkarov <artyom.shinkaroff@gmail.com>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

# prevent a bug with unclutter -grab:
pkill unclutter

file1=$(mktemp --tmpdir i3lock-wrapper-XXXXXXXXXX.png)
file2=$(mktemp --tmpdir i3lock-wrapper-XXXXXXXXXX.png)

scrot -d0 "$file1"

# pc fucked up
 convert "$file1" -shear 0x3 -swirl 15 -wave 100x5 "$file2"
 convert "$file1" -shear 0x3 -swirl 15 -wave 100x5 "$file2"

# coal and negated
#convert "$file1" -blur 0x2 -charcoal 5 -negate "$file2"

# use converted file to set screensaver
rm "$file1"
i3lock -i "$file2"
# remove cursor
unclutter -idle 2 -noevents -grab &
# delete used file
rm "$file2"
