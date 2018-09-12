#!/bin/bash

string="$(sensors -u coretemp-isa-0000 | rg temp1_input)"
string="${string##*:\ }"
string="${string%*.000}"

echo $string
