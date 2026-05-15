#!/bin/bash
yum update -y
yum install -y httpd
systemctl enable httpd
systemctl start httpd

INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
AVAILABILITY_ZONE=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)

cat >/var/www/html/index.html <<HTML
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Terraform Web Server</title>
  </head>
  <body>
    <h1>Terraform Web Server</h1>
    <p>Instance ID: ${INSTANCE_ID}</p>
    <p>Availability Zone: ${AVAILABILITY_ZONE}</p>
  </body>
</html>
HTML
