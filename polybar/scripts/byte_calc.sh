#!/bin/bash
number=$1
(( number=number/1024 ))
echo 'KB: ' $number
(( number=number/1024 ))
echo 'MB: ' $number
(( number=number/1024 ))
echo 'GB: ' $number
