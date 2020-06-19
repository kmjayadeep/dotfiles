#!/bin/bash

convert *.png -compress jpeg -quality 70 $1.pdf
