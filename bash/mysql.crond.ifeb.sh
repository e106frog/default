#!/bin/bash

mysql -uifeb -pSx6@Ut1?Py9.Mu8: <<EOF

use ifeb;
CREATE TABLE accounts_20210829 LIKE accounts;
INSERT INTO accounts_20210829 SELECT * FROM accounts;
UPDATE accounts SET account = credit WHERE account_mid = '5';

exit

EOF