#!/bin/bash

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chgrp GRP_ADM /adm
chgrp GRP_VEN /ven
chgrp GRP_SEC /sec

useradd carlos -m -c "Carlos Ferreira" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -m -c "Maria Ferreira" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -m -c "Joao Ferreira" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd debora -m -c "Debora Ferreira" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana Ferreira" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -m -c "Roberto Ferreira" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd josefina -m -c "Josefina Ferreira" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -m -c "Amanda Ferreira" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -m -c "Rogerio Ferreira" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

chmod 777 /publica
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
