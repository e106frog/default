#!/bin/bash

mysql -ujbao -pSx6@Ut1?Py9.Mu8: <<EOF

use jbao;

delete from user_logs where created_at <= from_unixtime(unix_timestamp()-(dayofweek(curdate())-2)*86400,'%Y-%m-%d 08:00:00');
delete from order_recharges where created_at <= from_unixtime(unix_timestamp()-(dayofweek(curdate())-2)*86400,'%Y-%m-%d 08:00:00');
delete from order_bets where created_at <= from_unixtime(unix_timestamp()-(dayofweek(curdate())-2)*86400,'%Y-%m-%d 08:00:00');
delete from order_bet_details where created_at <= from_unixtime(unix_timestamp()-(dayofweek(curdate())-2)*86400,'%Y-%m-%d 08:00:00');
delete from report_serials where created_at <= from_unixtime(unix_timestamp()-(dayofweek(curdate())-2)*86400,'%Y-%m-%d 08:00:00');
delete from report_profits where created_at <= from_unixtime(unix_timestamp()-(dayofweek(curdate())-2)*86400,'%Y-%m-%d 08:00:00');
delete from opencodes where created_at <= from_unixtime(unix_timestamp()-(dayofweek(curdate())-0)*86400,'%Y-%m-%d 08:00:00');

exit

EOF