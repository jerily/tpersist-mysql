# tpersist-mysql

`::tpersist_mysql::connection_options config` reads the MySQL driver options under `mysql`.

`::tpersist_mysql::connect options` takes a Tcl dictionary of MySQL connection options and returns an open TDBC connection in the current interpreter. The caller owns and closes it.

```tcl
package require tpersist-mysql
set db [::tpersist_mysql::connect {-host localhost -database app -user app}]
try {
    $db allrows {SELECT 1} {}
} finally {
    $db close
}
```
