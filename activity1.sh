#!/bin/sh
az group create --name 'devops'  --location 'central india'
az network vnet create --name 'vnet' --resource-group 'devops' --location 'central india' --address-prefixes '10.20.0.0/16' --subnet-name 'web' --subnet-prefixes '10.20.0.0/24' --subnet-name 'app' --subnet-prefixes '10.20.1.0/24'
az vm create --name 'ubuntuvm' --resource-group 'devops' --image ubuntults --data-disk-sizes-gb 10 20 --size Standard_B1s  --vnet-name 'vnet' --vnet-address-prefix '10.20.0.0/16' --subnet 'app' --subnet-address-prefix '10.20.1.0/24' --admin-username 'qtdevops' --generate-ssh-keys                
