#!/bin/sh

#If you install apache2.4.xx version you need apr and apr-util lib

cd /tmp/apache_update
rpm -ivh pcre-devel-7.8-7.el6.x86_64.rpm --nodeps > /dev/null 2>&1

cd /tmp/apache_update
tar zxvf httpd-2.4.39.tar.gz > /dev/null 2>&1
tar zxvf apr-1.7.0.tar.gz > /dev/null 2>&1
tar zxvf apr-util-1.6.1.tar.gz > /dev/null 2>&1
mv apr-1.7.0 httpd-2.4.39/srclib/apr
mv apr-util-1.6.1 httpd-2.4.39/srclib/apr-util
cd httpd-2.4.39 > /dev/null 2>&1
./configure --prefix=/usr/local/apache2 --with-included-apr --enable-so --enable-mods-shared --enable-rewrite --enable-ssl --enable-modules=ssl > /dev/null 2>&1
make > /dev/null 2>&1
make install > /dev/null 2>&1

#apache version check
apache_v=`/usr/local/apache2/bin/httpd -v | head -n  1 | awk '{print $3}' | cut -c 8-13`

echo "================================================"
echo "httpd update done"
echo "httpd version : $apache_v"
echo "================================================"

