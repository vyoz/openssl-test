#!/bin/sh

mkdir -p test
echo "this is a test text for AES encryption" > test/plain.txt
openssl enc -aes-256-cbc -md sha512 -pbkdf2 -iter 100000 -salt  -in test/plain.txt -out test/encrypt.txt -pass pass:passwd-1234-56.78
echo "file encoded to test/encrypt.txt"
