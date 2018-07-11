target_ip=$(env | grep TARGET_IP | awk -F'=' '{print $2}')
sed -i "s/localhost/${target_ip}/g" /var/www/html/zabbix/conf/zabbix.conf.php
/usr/sbin/httpd -D FOREGROUND
