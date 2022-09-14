#!/bin/sh

echo "this is a test text for RSA encryption" > test/message.txt
openssl rsautl -encrypt -inkey test/public.cert -pubin -in test/message.txt -out test/message.dat
echo "done, file saved in test/message.dat"
