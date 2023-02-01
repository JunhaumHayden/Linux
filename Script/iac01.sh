#!/bin/bash

echo "Criando Diretorios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de Usuarios..."

groupadd grp_adm
groupadd grp_ven
groupadd grp_sec

echo "Criando Usuario..."

useradd carlos -c "Carlos ADM" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_adm
useradd maria -c "Maria ADM" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_adm
useradd joao -c "joao ADM" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_adm

useradd debora -c "Debora VEN" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_ven
useradd sebastiana -c "Sebastiana VEN" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_ven
useradd roberto -c "Roberto VEN" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_ven

useradd josefina -c "Josefina SEC" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_sec
useradd amanda -c "Amanda SEC" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_sec
useradd rogerio -c "Rogerio SEC" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_sec

echo "Especificando permissoes de diretorios..."

chown root:grp_adm /adm
chown root:grp_ven /ven
chown root:grp_sec /sec

chmod 770 /adm
chmod 770 /ven
chmod 777 /sec
chmod 777 /publico

echo "FIM..."
