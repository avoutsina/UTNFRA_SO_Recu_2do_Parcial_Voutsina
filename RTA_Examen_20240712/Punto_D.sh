cd UTN-FRA_SO_Examenes/
ssh-keygen
cat /home/alev/.ssh//id_rsa.pub
cd 202407_Recu/ansible/roles/2PRecuperatorio/
mkdir templates
cd templates/
vim datos_alumno.j2
cd ..
cd tasks/
vim main.yml
cd ..
cd vars/
vim main.yml
cd
cd UTN-FRA_SO_Examenes/202407_Recu/ansible/roles/2PRecuperatorio/
cd task
cd tasks/
vim main.yml
cd
cd UTN-FRA_SO_Examenes/202407_Recu/ansible/roles
ansible-galaxy role init instala_tools_voutsina
cd instala_tools_voutsina/
cd tasks/
vim main.yml
cd
cd .ssh/
ll
cat id_rsa.pub >> authorized_keys
cd
cd UTN-FRA_SO_Examenes/202407_Recu/ansible/
vim playbook.yml
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
