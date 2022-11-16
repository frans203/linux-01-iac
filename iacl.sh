#!/bin/bash

echo "Creating Directories..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating user groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users..."

sudo useradd -m carlos -p Senha123 -G GRP_ADM
sudo useradd -m maria -p Senha123 -G GRP_ADM
sudo useradd -m joao -p Senha123 -G GRP_ADM

sudo useradd -m debora -p Senha123 -G GRP_VEN
sudo useradd -m sebastiana -p Senha123 GRP_VEN
sudo useradd -m roberto -p Senha123 GRP_VEND

sudo useradd -m josefina -p Senha123 GRP_SEC
sudo useradd -m amanda -p Senha123 GRP_SEC
sudo useradd -m rogerio -p Senha123 GRP_SEC

echo "Permissions..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "End."



