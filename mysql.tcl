package require tdbc::mysql
namespace eval ::tpersist_mysql {namespace export connection_options connect}

proc ::tpersist_mysql::connection_options {config} {
    return [dict get $config mysql]
}

proc ::tpersist_mysql::connect {options} {
    set normalized {}
    foreach {key value} $options {
        if {$key eq "-password"} {set key -passwd}
        lappend normalized $key $value
    }
    return [::tdbc::mysql::connection new {*}$normalized]
}

package provide tpersist-mysql 0.1.8
