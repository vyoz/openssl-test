#!/bin/sh

mkdir -p test
openssl genrsa 2048 > test/secret.key
openssl rsa -in test/secret.key -pubout > test/public.key
echo "done, keys saved in test/secret.key & test/public.key"
