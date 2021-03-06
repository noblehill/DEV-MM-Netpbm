extproc sh

#!/bin/sh
#
# pnmsmooth - smooth out an image by replacing each xel with the
#             average of its nine immediate neighbors

tmp=/tmp/psm.$$
rm -f $tmp

cat > $tmp << MOO
P2
3 3
18
10 10 10
10 10 10
10 10 10
MOO

pnmconvol $tmp ${1+"$@"}

rm -f $tmp
