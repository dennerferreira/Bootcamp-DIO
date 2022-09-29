iacl.sh

#!/bin/bash

echo "Iniciando a criação de diretórios"

mkdir /publico
echo "Diretorio publico criado"

mkdir /adm
echo "Diretorio adm criado"

mkdir /ven
echo "Diretorio ven criado"

mkdir /sec
echo "Diretorio sec criado"

#
echo "Iniciando a criação dos grupos de usuários"
#

groupadd GRP_ADM
echo "Grupo Administrativo criado com sucesso!"	

groupadd GRP_VEN
echo "Grupo Vendas criado com sucesso!"

groupadd GRP_SEC
echo "Grupo Secretaria criado com sucesso!"


echo "Iniciando a criação dos usuários"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC


echo "Especificando permissões dos Usuários"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod 777 /publico