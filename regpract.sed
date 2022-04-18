#!/bin/sh

for var in "$@"; do
     
    sed -i -e 's/\s[a-zA-Z]\{3\}[0-9]\{3\}/ XYZ000/g' $@ 
    sed -i -e 's/@[0-9]\{8\}/@XXXXXXXX/g' $@
    sed -i -e 's/[A-F]-/X/g' $@
    sed -i -e 's/[A-F]+/X/g' $@
    sed -i -e 's/\s[A-F]\s/ X /g' $@
    sed -i -e 's/[A-F]$/X/g' $@
    sed -i -e 's/\s[0-4]\.[0-9][0-9]\?[0-9]\?/ X.X/g' $@ 
    sed -i -e '/^X/d' $@

done
