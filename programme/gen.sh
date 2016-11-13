#!/bin/bash
unoconv -f pdf tableau-schedule.odt
inkscape --export-pdf plan-enseeiht-cdl.pdf plan-enseeiht-cdl.svg
pdf270 --suffix 'rotated' plan-enseeiht-cdl.pdf
#pdf90 --suffix 'rotated' tableau-schedule.pdf (no needed but why?)
pdfjoin --outfile prog-concat.pdf programme.pdf plan-enseeiht-cdl-rotated.pdf tableau-schedule.pdf
pdfjam  --outfile prog-booklet.pdf prog-concat.pdf '1,2,3,10,11,12,13,14,4,15,16,5,6,7,8,9'
rm prog-concat.pdf
rm plan-enseeiht-cdl.pdf
rm plan-enseeiht-cdl-rotated.pdf
rm tableau-schedule.pdf
