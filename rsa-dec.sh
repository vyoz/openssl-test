#!/bin/sh

openssl rsautl -decrypt -inkey test/secret.cert -in test/message.dat > test/message.dat.txt
echo "done, file saved in test/message.dat.txt, content:"
echo "=================test/message.dat.txt============"
cat test/message.dat.txt

