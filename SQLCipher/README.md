# SQLCipher C project

Lord BaseX (c) 2018
 Federico Pereira <fpereira@cnsoluciones.com>

This code is distributed under the GNU LGPL v3.0 license.



## Installation SQLCipher


```bash
sudo su
cd /usr/src
apt -y install libssl-dev
apt -y install tclsh
git clone https://github.com/sqlcipher/sqlcipher
cd sqlcipher
./configure --enable-tempstore=yes CFLAGS="-DSQLITE_HAS_CODEC -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_FTS3_PARENTHESIS" LDFLAGS="-lcrypto"
make
make install
mv /usr/local/bin/sqlcipher /usr/bin/sqlcipher
```

## Example C

#Building your own minimal C project example
In your SQLite_example.c put the following lines 

```bash
sudo su
cd /usr/src
wget https://raw.githubusercontent.com/lordbasex/custom-image-raspberry/master/SQLCipher/SQLite_example.c -O /usr/src/SQLite_example.c
````

Install library sqlite3.h
```bash
apt-get -y install libsqlite3-dev
````

Edit the file SQLite example.c the lines:

* rc = sqlite3_open("configuration.sqlite", &db); //open SQLite database test.db
* rc = sqlite3_key(db, "plokij", 8);//apply encryption to previously opened database

Build your example:

```bash
gcc SQLite_example.c -o SQLtest -I /usr/bin/sqlcipher -L /usr/local/lib/libsqlcipher.a -lsqlcipher
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
./SQLtest
```
Run your test code
```bash
./SQLtest
```


## More Doc

```
https://coolaj86.com/articles/building-sqlcipher-for-node-js-on-raspberry-pi-2/
https://thejeshgn.com/2014/12/09/sqlcipher-for-encrypted-sqlite-database/
https://discuss.zetetic.net/t/c-project-building-with-dynamically-compiled-sqlcipher/331/2
```
