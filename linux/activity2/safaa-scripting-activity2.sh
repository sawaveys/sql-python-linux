#!/bin/sh


for i in $(ls *.tst); do mv $i $(basename $i .tst)_$(date +%Y%m%d).tst; done  


exit 0 

