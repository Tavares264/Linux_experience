#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretorios criados !"
echo "============================================================================================"

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "grupos de usuários criado !"
echo "============================================================================================"

echo "Criando usuários..."

useradd gustavo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd eduardo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd alexandre -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Usuários criados !"
echo "============================================================================================"

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões dos diretórios especificadas!"
echo "============================================================================================"
