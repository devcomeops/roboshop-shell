cp -r catalogue.service /etc/systemd/system/catalogue.service

dnf module disable nodejs -y
dnf module enable nodejs:20 -y

dnf install nodejs -y

useradd roboshop
mkdir /app 

curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip 
cd /app 
unzip /tmp/catalogue.zip
cd /app 
npm install 

systemctl daemon-reload

systemctl enable catalogue 
systemctl start catalogue

cp -r mongo.repo  /etc/yum.repos.d/mongo.repo

dnf install mongodb-mongosh -y

mongosh --host MONGODB-SERVER-IPADDRESS </app/db/master-data.js