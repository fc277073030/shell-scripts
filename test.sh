#!/bin/bash

# 一键部署 LNMP(源码安装版本)
menu()
{
clear
echo "  ##############‐‐‐‐Menu‐‐‐‐##############"
echo "# 1. 部署私有云"
echo "# 2. 部署混合云"
echo "# 3. 部署边缘"
echo "# 4. 退出"
echo "  ########################################"
}

choice()
{
  read -p "Please choice a menu[1‐9]:" select
}

install_privilege()
{
  ss -nutlp | awk '{print $1,$5}' | awk -F"[: ]" '{print "协议:"$1,"端口号:"$NF}' | grep "[0‐9]" | uniq
}

install_hybrid()
{
  echo "部署混合云"
}

install_edge()
{
	echo "部署边缘"
}

while :
do
  menu
  choice
  case $select in
  1)
    install_privilege
    ;;
  2)
    install_hybrid
    ;;
  3)
    install_edge
    ;;
  4)
    exit
    ;;
  *)
    echo Sorry!
  esac
done