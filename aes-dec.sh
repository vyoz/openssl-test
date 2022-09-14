#!/bin/sh

openssl enc -aes-256-cbc -md sha512 -pbkdf2 -iter 100000 -salt -d -in test/encrypt.txt -out test/plain.dec.txt -pass pass:passwd-1234-56.78

echo "file decoded to test/plain.dec.txt, content:"
echo "===============test/plain.dec.txt================"
cat test/plain.dec.txt
