cp -r mongodb.repo /etc/yum.repos.d/mongodb.repo

dnf install mongodb-org -y 


systemctl enable mongod 
systemctl start mongod 

sed -e -i /127.0.0.1/ 0.0.0.0  -s /etc/mongod.conf

systemctl restart mongod