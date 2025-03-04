cp -r mongodb.repo /etc/yum.d/mongodb.repo

dnf install mongodb-org -y 


systemctl enable mongod 
systemctl start mongod 

sed -e -i /127.0.0.1/ 0.0.0.0 

systemctl restart mongod