dnf module disable redis -y
dnf module enable redis:7 -y

dnf install redis -y 

sed -e -i 127.0.0.1 Update listen address from 127.0.0.1 to 0.0.0.0 in /etc/redis/redis.conf

protected-mode from yes to no in /etc/redis/redis.conf

systemctl enable redis 
systemctl start redis 