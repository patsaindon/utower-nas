echo -e "\n\033[0;32m >> Install Requirements\033[0m"
echo "deb http://archive.ubuntu.com/ubuntu trusty-backports main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list  
sudo apt-get -y update
sudo apt-get -y upgrade
sudo /usr/bin/apt-get -y install python-pip3
sudo /usr/bin/pip3 install --user ansible

#if [ ! -d "$HOME/ansible-uTower-roles" ]; then
#	echo -e  "\n\033[0;32m >> Clone  ansible-uTower-roles repository\033[0m"
#	git clone --recursive git@github.com:patsaindon/uTower-Mediaserver.git "$HOME/uTower-Mediaserver"
#else
#	echo -e "\n\033[0;32m >> ansible-uTower-roles is already available\033[0m"
#fi
#cd "$HOME/uTower-Mediaserver"
# echo -e "\n\033[0;32m >> Run Wizard\033[0m"
# python scripts/wizard.py <&1
#cp group_vars/uTower.tmp group_vars/uTower.yml
#nano group_vars/uTower.yml
#cp inventory/inventory.tmp inventory/inventory.yml
#nano inventory/inventory.yml
#nano site.yml
echo -e "\n\033[0;32m >> Installing ...\033[0m"
#ansible-playbook -i inventory/inventory.yml -c local -b -K site.yml