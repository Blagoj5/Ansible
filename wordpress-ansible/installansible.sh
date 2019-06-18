#!/bin/bash
ansibleconfirm=`which ansible`
if [ -z $ansibleconfirm ] 
then
sudo apt update 
sudo apt install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y 
sudo apt update
sudo apt install ansible -y
sudo apt install python -y
else
echo "Ansible installed"
fi
sudo apt-get install git -y
cd 
if [ ! -d ~/Test ]
then
git clone https://github.com/Blagoj5/Test.git # cloning the repo that my confs are in
else
echo "The repo is already cloned"
fi
# ADD HOSTS
#number=0
#cat /etc/hosts | while read line
#do
#  if [ "$line" == "192.168.135.101 lb01" ]
#   then
#    let "number+=1"
# fi
#done

#  if [ $number -eq 0 ]
#   then
    cat >> /etc/hosts
    127.0.0.1 control
    192.168.135.101 lb01
    192.168.135.111 ap01
    192.168.135.112 ap02
    192.168.135.121 db01
#fi