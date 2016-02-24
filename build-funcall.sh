#!/bin/sh
rm -f xc xem funcall funcall.txt
gcc -o xc -O3 -m32 -Ilinux -Iroot/lib root/bin/c.c
gcc -o xem -O3 -m32 -Ilinux -Iroot/lib root/bin/em.c -lm
./xc -o funcall -Iroot/lib root/usr/funcall.c
./xc -s -Iroot/lib root/usr/funcall.c >funcall.txt
./xc -s -Iroot/lib root/usr/os/os1.c > os1.txt
./xc -s -Iroot/lib root/usr/os/os0.c > os0.txt
./xem funcall

