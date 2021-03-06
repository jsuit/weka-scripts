#!/bin/bash
#
# Extract the summary data (Correctly/Incorrectly classified instances, statistics, etc) from one or more output files.  This
# will replace spaces that separate the fields with commas, for easy processing in excel
#
grep -A7 -B2 'Correctly' ${@} | sed -e 's/\([0-9]\)\s\+%/\1%/g' | sed -e 's/\s\{2,\}/,/g' | sed -e 's/^--$//g' | sed -e 's/t[-:]/t,/g'
