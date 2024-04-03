#!/usr/bin/env bash
echo "Instalando Apache e configurando..."
echo "Instalando o Apache"
# yum update -y
# yum install -y kernel-devel --enablerepo=C*-base --enablerepo=C*-updates
# yum install -y kernel-devel
yum install -y httpd >/dev/null 2>&1
echo "Executando a cópia dos arquivos html"
cp -r //vagrant/html/* /var/www/html/ 
echo "Iniciando o Apache"
service httpd start
