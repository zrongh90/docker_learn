target_ip=$(env | grep TARGET_IP | awk -F'=' '{print $2}')
sed -i "s/localhost/${target_ip}/g" /var/www/html/zabbix/conf/zabbix.conf.php
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
if [ $(ps -ef | grep httpd | wc -l) > 2 ];then  
    /usr/sbin/httpd -D FOREGROUND
fi
