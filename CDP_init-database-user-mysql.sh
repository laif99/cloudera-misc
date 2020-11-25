#!/bin/bash
MYSQL_USER=root
MYSQL_PW=root
mysql -u${MYSQL_USER} -p${MYSQL_PW} << EOF_QUERY
create database scm DEFAULT CHARACTER SET utf8;
grant all on scm.* TO 'scm'@'%' IDENTIFIED BY 'scm';
create database amon DEFAULT CHARACTER SET utf8;
grant all on amon.* TO 'amon'@'%' IDENTIFIED BY 'amon';
create database rman DEFAULT CHARACTER SET utf8;
grant all on rman.* TO 'rman'@'%' IDENTIFIED BY 'rman';
create database metastore DEFAULT CHARACTER SET utf8;
grant all on metastore.* TO 'hive'@'%' IDENTIFIED BY 'hive';
create database nav DEFAULT CHARACTER SET utf8;
grant all on nav.* TO 'nav'@'%' IDENTIFIED BY 'nav';
create database navms DEFAULT CHARACTER SET utf8;
grant all on navms.* TO 'navms'@'%' IDENTIFIED BY 'navms';
create database ranger DEFAULT CHARACTER SET utf8;
grant all on rangeradmin.* TO 'rangeradmin'@'%' IDENTIFIED BY 'rangeradmin';
create database oozie DEFAULT CHARACTER SET utf8;
grant all on oozie.* TO 'oozie'@'%' IDENTIFIED BY 'oozie';
create database hue DEFAULT CHARACTER SET utf8 ;
grant all on hue.* to 'hue'@'%' identified by 'hue';
flush privileges;
EOF_QUERY
