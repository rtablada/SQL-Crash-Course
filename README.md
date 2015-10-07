# SQL-Crash-Course


* Get the [Sqlite Command line](https://www.sqlite.org/download.html)
* Get the [Contacts Example] (contacts.sql) and place it in the same folder as your sqlite executable.

* Create a database by running sqlite crash.db
* at the sqlite prompt enter  
```.read contacts.sql ```


Helpful sqlite commands
```
.headers on -- results will appear with headers
.mode columns -- outputs results as columns
.exit or .quit  --exit sqlite

.tables -- list all tables in database
.output FILENAME     Send output to FILENAME or stdout
.schema TABLE        Show the CREATE statements
                         If TABLE specified, only show tables matching
                         LIKE pattern TABLE.
```

