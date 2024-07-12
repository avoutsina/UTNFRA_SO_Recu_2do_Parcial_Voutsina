ll
source  ~/.bashrc  && history -a
source ~/.bashrc
sudo fdisk -l
wipefs -a /dev/sdd1
sudo wipefs -a /dev/sdd1
sudo wipefs -a /dev/sdc1
sudo wipefs -a /dev/sdc2
sudo wipefs -a /dev/sdc3
sudo wipefs -a /dev/sde1
sudo pvcreate /dev/sdd1 /dev/sdc1 /dev/sdc2 /dev/sdc3 
sudo pvs
vgcreate vg_datos /dev/sdc1 /dev/sdc2
sudo vgcreate vg_datos /dev/sdc1 /dev/sdc2
sudo vgs
sudo vgcreate vg_temp /dev/sdc3 /dev/sdd1
sudo vgs
sudo pvs
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo lvcreate -L +1.5G vg_datos -n lv_multimedia
sudo lvcreate -l +100%FREE vg_datos -n lv_docker
sudo lvs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkswap dev/mapper/vg_temp-lv_swap
sudo mkswap /dev/mapper/vg_temp-lv_swap
free -h
sudo swapon /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/sde1
free -h
sudo mkswap /dev/sde1
sudo swapon /dev/sde1
free -h
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo systemctl restart docker
sudo systemctl status docker
pwd
cd ..
pwd
sudo mkdir Multimedia
PWD
pwd
ll
su - alev
ale
cd /home/alev
pwd
sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia/
sudo lsblk -f
ll
cd RTA_Examen_20240712/
ll
echo "sudo fdisk /dev/sdc" >> Punto_A.sh 
echo "sudo fdisk /dev/sdd" >> Punto_A.sh 
echo "sudo fdisk /dev/sde" >> Punto_A.sh 
echo "sudo wipefs -a /dev/sdc1" >> Punto_A.sh 
echo "sudo wipefs -a /dev/sdc2" >> Punto_A.sh 
echo "sudo wipefs -a /dev/sdc3" >> Punto_A.sh 
echo "sudo wipefs -a /dev/sdd1" >> Punto_A.sh 
echo "sudo wipefs -a /dev/sde1" >> Punto_A.sh 
echo "pvcreate /dev/sdc1 /dev/sdc2 /dev/sdc3 /dev/sdd1" >> Punto_A.sh 
echo "vgcreate vg_datos /dev/sdc1 /dev/sdc2" >> Punto_A.sh 
echo "vgcreate vg_temp /dev/sdc3 /dev/sdd1" >> Punto_A.sh 
echo "lvcreate -l +100%FREE  vg_temp -n lv_swap" >> Punto_A.sh 
echo "lvcreate -L +1.5G  vg_datos -n lv_multimedia" >> Punto_A.sh 
echo "lvcreate -l +100%FREE  vg_datos -n lv_docker" >> Punto_A.sh 
echo "mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia" >> Punto_A.sh 
echo "mkfs.ext4 /dev/mapper/vg_datos-lv_docker" >> Punto_A.sh 
echo "sudo mkswap dev/mapper/vg_temp-lv_swap" >> Punto_A.sh 
echo "sudo mkswap /dev/sde1" >> Punto_A.sh 
echo "sudo swapon /dev/mapper/vg_temp-lv_swap" >> Punto_A.sh 
echo "sudo swapon /dev/sde1" >> Punto_A.sh 
echo "sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/" >> Punto_A.sh 
echo "sudo systemctl restart docker" >> Punto_A.sh 
echo "sudo systemctl status docker" >> Punto_A.sh 
echo "cd .." >> Punto_A.sh 
echo "sudo mkdir Multimedia" >> Punto_A.sh 
echo "cd /home/alev" >> Punto_A.sh 
echo "sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia/" >> Punto_A.sh 
echo "sudo lsblk -f" >> Punto_A.sh 
cat Punto_A.sh 
cd ..
cd /usr/local/bin
pwd
vim voutsina_check_URL.sh
ll
sudo vim voutsina_check_URL.sh
sudo chmodd 755 voutsina_check_URL.sh 
sudo chmod 755 voutsina_check_URL.sh 
cd /home/alev
pwd
./voutsina_check_URL.sh UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt 
cd /usr/local/bin
./voutsina_check_URL.sh UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt 
./voutsina_check_URL.sh home/alev/UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt 
./voutsina_check_URL.sh /home/alev/UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt 
cd /tmp/head-check/
ll
cd Error/
ll
cd cliente/
ll
cat noexiste.log 
cd ..
cd servidor/
cat httpbin.log 
cd ..
cd ok/
cat google.log 
cat httpbin.log 
cat wikipedia.log 
cd
pwd
cd RTA_Examen_20240712/
ll
echo "cd /usr/local/bin" >> Punto_B.sh 
echo "sudo vim voutsina_check_URL.sh" >> Punto_B.sh 
echo "sudo chmod 755 voutsina_check_URL.sh" >> Punto_B.sh 
echo "./voutsina_check_URL.sh /home/alev/UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt" >> Punto_B.sh 
echo "cd /tmp/head-check/" >> Punto_B.sh 
echo "cd Error/" >> Punto_B.sh 
echo "cd cliente/" >> Punto_B.sh 
echo "cat noexiste.log " >> Punto_B.sh 
echo "cd .." >> Punto_B.sh 
echo "cd" >>Punto_B.sh 
cat Punto_B.sh 
cd
pwd
cd UTN-FRA_SO_Examenes/202407_Recu/docker/
ll
cd web
ll
sudo vim index.html 
cd ..
docker login -u alejandrovoutsina
ll
vim dockerfile 
docker build -t alejandrovoutsina/web2-voutsina:v1 .
sudo usermod -G docker alev
docker build -t alejandrovoutsina/web2-voutsina:v1 .
sudo docker build -t alejandrovoutsina/web2-voutsina:v1 .
sudo fdisk -l
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc4
sudo pvs
sudo vgextend vg_datos /dev/sdc4
sudo vgs
sudo pvs
lvextend -l +100
lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
sudo lvs
cd UTN-FRA_SO_Examenes/202407_Recu/docker/
docker build -t alejandrovoutsina/web2-voutsina:v1 .
cd
sudo fdisk /dev/sde
pvcreate /dev/sde2
sudo pvcreate /dev/sde2
sudo vgextend vg_datos /dev/sde2
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
sudo pvs
sudo vgs
cd UTN-FRA_SO_Examenes/202407_Recu/docker/
docker build -t alejandrovoutsina/web2-voutsina:v1 .
docker image list
docker push alejandrovoutsina/web2-voutsina:v1
cd web
ll
cd file
ll
cat info.txt 
echo -n "CPU Modelo:" > info.txt
cat /proc/cpuinfo | grep 'model name' | tail -n1 | awk -F ':' '{print $2}' >> info.txt
echo -n "Frecuencia:" >> info.txt
cat /proc/cpuinfo | grep 'cpu MHz' | tail -n1 | awk -F ':' '{print $2}' >> info.txt
cat info.txt 
ll
cd ..
ll
cd ..
ll
vim docker-compose.yml 
docker compose up -d
history
cd ..
cd 202407_Recu/
ll
pwd
cd
ll
cd RTA_Examen_20240712/
ll
cat Punto_B.sh 
echo "cd UTN-FRA_SO_Examenes/202407_Recu/docker/" > Punto_C.sh 
echo "cd web" >> Punto_C.sh 
echo "sudo vim index.html" >> Punto_C.sh 
echo "docker login -u alejandrovoutsina" >> Punto_C.sh 
cd
pwd
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
llll
ll
cat id_rsa.pub >> authorized_keys
cd
cd UTN-FRA_SO_Examenes/202407_Recu/ansible/
vim playbook.yml 
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
history
cd
cd RTA_Examen_20240712/
echo "cd
pwd
cd UTN-FRA_SO_Examenes/202407_Recu/docker/
ll
cd web
ll
sudo vim index.html
cd ..
docker login -u alejandrovoutsina
ll
vim dockerfile
docker build -t alejandrovoutsina/web2-voutsina:v1 .
sudo usermod -G docker alev
docker build -t alejandrovoutsina/web2-voutsina:v1 .2 sudo docker build -t alejandrovoutsina/web2-voutsina:v1 .143  sudo fdisk -l
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc4
sudo pvs
sudo vgextend vg_datos /dev/sdc4
sudo vgs
sudo pvs
lvextend -l +100
lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_dockersudo resize2fs /dev/mapper/vg_datos-lv_docker
sudo lvs
cd UTN-FRA_SO_Examenes/202407_Recu/docker/
docker build -t alejandrovoutsina/web2-voutsina:v1 .
cd
sudo fdisk /dev/sde
pvcreate /dev/sde2
sudo pvcreate /dev/sde21  sudo vgextend vg_datos /dev/sde2
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
sudo pvs
sudo vgs
cd UTN-FRA_SO_Examenes/202407_Recu/docker/
docker build -t alejandrovoutsina/web2-voutsina:v1 .
docker image list
docker push alejandrovoutsina/web2-voutsina:v1
cd web
ll
cd file
ll
cat info.txt
echo -n "CPU Modelo:" > info.txt
cat /proc/cpuinfo | grep 'model name' | tail -n1 | awk -F ':' '{print $2}' >> info.txt
echo -n "Frecuencia:" >> info.txt
cat /proc/cpuinfo | grep 'cpu MHz' | tail -n1 | awk -F ':' '{print $2}' >> info.txt
cat info.txt
ll
cd ..
ll
cd ..
ll
vim docker-compose.yml
docker compose up -d" >> Punto_C.sh 
cat Punto_C.sh 
ll
echo "cd UTN-FRA_SO_Examenes/
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
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass" >> Punto_D.sh 
cat Punto_D.sh 
cat Punto_A.sh 
cat Punto_B.sh 
cat Punto_C.sh 
cat Punto_D.sh 
git status
git clone git@github.com:avoutsina/UTNFRA_SO_Recu_2do_Parcial_Voutsina.git
ll
cd
ll
cd RTA_Examen_20240712/
ll
cd
pwd
git clone 
Vouts@DESKTOP-DUKHL0L MINGW64 /c/vagrant/UTN-FRA_SO_Vagrant/VagrantFiles/segundo_parcial (master)
$ vagrant up
==> vagrant: You have enabled the experimental flag with all features enabled.
==> vagrant: Please use with caution, as some of the features may not be fully
==> vagrant: functional yet.
Bringing machine 'Alejandro' up with 'virtualbox' provider...
==> Alejandro: Cloning VM...
==> Alejandro: Matching MAC address for NAT networking...
==> Alejandro: Checking if box 'ubuntu/jammy64' version '20240417.0.0' is up to date...
==> Alejandro: Setting the name of the VM: Alejandro
==> Alejandro: Clearing any previously set network interfaces...
==> Alejandro: Preparing network interfaces based on configuration...
==> Alejandro: Forwarding ports...
==> Alejandro: Configuring storage mediums...
==> Alejandro: Running 'pre-boot' VM customizations...
==> Alejandro: Booting VM...
==> Alejandro: Waiting for machine to boot. This may take a few minutes...
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://ppa.launchpad.net/ansible/ansible/ubuntu jammy InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:4 http://security.ubuntu.com/ubuntu jammy-security InRelease
Hit:5 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
ca-certificates is already the newest version (20230311ubuntu0.22.04.1).
ca-certificates set to manually installed.
curl is already the newest version (7.81.0-1ubuntu1.16).
curl set to manually installed.
0 upgraded, 0 newly installed, 0 to remove and 58 not upgraded.
Get:1 https://download.docker.com/linux/ubuntu jammy InRelease [48.8 kB]
Get:2 https://download.docker.com/linux/ubuntu jammy/stable amd64 Packages [35.6 kB]
Hit:3 http://security.ubuntu.com/ubuntu jammy-security InRelease
Hit:4 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:5 http://ppa.launchpad.net/ansible/ansible/ubuntu jammy InRelease
Hit:6 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:7 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Fetched 84.4 kB in 1s (86.4 kB/s)
Reading package lists... Done
alev@Alejandro:~$ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
Suggested packages:
The following NEW packages will be installed:
0 upgraded, 10 newly installed, 0 to remove and 58 not upgraded.
Need to get 122 MB of archives.
After this operation, 437 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 https://download.docker.com/linux/ubuntu jammy/stable amd64 containerd.io amd64 1.7.18-1 [30.5 MB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/universe amd64 pigz amd64 2.6-1 [63.6 kB]
Get:3 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-buildx-plugin amd64 0.15.1-1~ubuntu.22.04~jammy [29.8 MB]
Get:4 http://archive.ubuntu.com/ubuntu jammy/main amd64 libltdl7 amd64 2.4.6-15build2 [39.6 kB]
Get:5 http://archive.ubuntu.com/ubuntu jammy/main amd64 libslirp0 amd64 4.6.1-1build1 [61.5 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy/universe amd64 slirp4netns amd64 1.0.1-2 [28.2 kB]
Get:7 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce-cli amd64 5:27.0.3-1~ubuntu.22.04~jammy [14.6 MB]
Get:8 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce amd64 5:27.0.3-1~ubuntu.22.04~jammy [25.3 MB]
Get:9 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce-rootless-extras amd64 5:27.0.3-1~ubuntu.22.04~jammy [9319 kB]
Get:10 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-compose-plugin amd64 2.28.1-1~ubuntu.22.04~jammy [12.5 MB]
Fetched 122 MB in 5s (25.4 MB/s)
Selecting previously unselected package pigz.
(Reading database ... 87218 files and directories currently installed.)
Preparing to unpack .../0-pigz_2.6-1_amd64.deb ...
Unpacking pigz (2.6-1) ...
Selecting previously unselected package containerd.io.
Preparing to unpack .../1-containerd.io_1.7.18-1_amd64.deb ...
Unpacking containerd.io (1.7.18-1) ...
Selecting previously unselected package docker-buildx-plugin.
Preparing to unpack .../2-docker-buildx-plugin_0.15.1-1~ubuntu.22.04~jammy_amd64.deb ...
Unpacking docker-buildx-plugin (0.15.1-1~ubuntu.22.04~jammy) ...
Selecting previously unselected package docker-ce-cli.
Preparing to unpack .../3-docker-ce-cli_5%3a27.0.3-1~ubuntu.22.04~jammy_amd64.deb ...
Unpacking docker-ce-cli (5:27.0.3-1~ubuntu.22.04~jammy) ...
Selecting previously unselected package docker-ce.
Preparing to unpack .../4-docker-ce_5%3a27.0.3-1~ubuntu.22.04~jammy_amd64.deb ...
Unpacking docker-ce (5:27.0.3-1~ubuntu.22.04~jammy) ...
Selecting previously unselected package docker-ce-rootless-extras.
Preparing to unpack .../5-docker-ce-rootless-extras_5%3a27.0.3-1~ubuntu.22.04~jammy_amd64.deb ...
Unpacking docker-ce-rootless-extras (5:27.0.3-1~ubuntu.22.04~jammy) ...
Selecting previously unselected package docker-compose-plugin.
Preparing to unpack .../6-docker-compose-plugin_2.28.1-1~ubuntu.22.04~jammy_amd64.deb ...
Unpacking docker-compose-plugin (2.28.1-1~ubuntu.22.04~jammy) ...
Selecting previously unselected package libltdl7:amd64.
Preparing to unpack .../7-libltdl7_2.4.6-15build2_amd64.deb ...
Unpacking libltdl7:amd64 (2.4.6-15build2) ...
Selecting previously unselected package libslirp0:amd64.
Preparing to unpack .../8-libslirp0_4.6.1-1build1_amd64.deb ...
Unpacking libslirp0:amd64 (4.6.1-1build1) ...
Selecting previously unselected package slirp4netns.
Preparing to unpack .../9-slirp4netns_1.0.1-2_amd64.deb ...
Unpacking slirp4netns (1.0.1-2) ...
Setting up docker-buildx-plugin (0.15.1-1~ubuntu.22.04~jammy) ...
Setting up containerd.io (1.7.18-1) ...
Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /lib/systemd/system/containerd.service.
Setting up docker-compose-plugin (2.28.1-1~ubuntu.22.04~jammy) ...
Setting up libltdl7:amd64 (2.4.6-15build2) ...
Setting up docker-ce-cli (5:27.0.3-1~ubuntu.22.04~jammy) ...
Setting up libslirp0:amd64 (4.6.1-1build1) ...
Setting up pigz (2.6-1) ...
Setting up docker-ce-rootless-extras (5:27.0.3-1~ubuntu.22.04~jammy) ...
Setting up slirp4netns (1.0.1-2) ...
Setting up docker-ce (5:27.0.3-1~ubuntu.22.04~jammy) ...
Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for libc-bin (2.35-0ubuntu3.6) ...
Scanning processes...
Scanning linux images...
Running kernel seems to be up-to-date.
No services need to be restarted.
No containers need to be restarted.
No user sessions are running outdated binaries.
No VM guests are running outdated hypervisor (qemu) binaries on this host.
alev@Alejandro:~$ sudo docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
c1ec31eb5944: Pull complete
Digest: sha256:1408fec50309afee38f3535383f5b09419e6dc0925bc69891e79d84cc4cdcec6
Status: Downloaded newer image for hello-world:latest
Hello from Docker!
This message shows that your installation appears to be working correctly.
To generate this message, Docker took the following steps:
To try something more ambitious, you can run an Ubuntu container with:
Share images, automate workflows, and more with a free Docker ID:
For more examples and ideas, visit:
alev@Alejandro:~$ fdisk -l
fdisk: cannot open /dev/loop0: Permission denied
fdisk: cannot open /dev/loop1: Permission denied
fdisk: cannot open /dev/loop2: Permission denied
fdisk: cannot open /dev/sda: Permission denied
fdisk: cannot open /dev/sdb: Permission denied
fdisk: cannot open /dev/sdd: Permission denied
fdisk: cannot open /dev/sdc: Permission denied
fdisk: cannot open /dev/sde: Permission denied
alev@Alejandro:~$ sudo fdisk -l
Disk /dev/loop0: 87.02 MiB, 91246592 bytes, 178216 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk /dev/loop1: 63.95 MiB, 67051520 bytes, 130960 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk /dev/loop2: 38.73 MiB, 40615936 bytes, 79328 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk /dev/sda: 40 GiB, 42949672960 bytes, 83886080 sectors
Disk model: HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x9ef31685
Device     Boot Start      End  Sectors Size Id Type
/dev/sda1  *     2048 83886046 83883999  40G 83 Linux
Disk /dev/sdb: 10 MiB, 10485760 bytes, 20480 sectors
Disk model: HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk /dev/sdd: 1 GiB, 1073741824 bytes, 2097152 sectors
Disk model: HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk /dev/sdc: 3 GiB, 3221225472 bytes, 6291456 sectors
Disk model: HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk /dev/sde: 1 GiB, 1073741824 bytes, 2097152 sectors
Disk model: HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
alev@Alejandro:~$ pwd
/home/alev
alev@Alejandro:~$ git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
Cloning into 'UTN-FRA_SO_Examenes'...
remote: Enumerating objects: 612, done.
remote: Counting objects: 100% (210/210), done.
remote: Compressing objects: 100% (138/138), done.
remote: Total 612 (delta 84), reused 166 (delta 47), pack-reused 402
Receiving objects: 100% (612/612), 1.57 MiB | 2.58 MiB/s, done.
Resolving deltas: 100% (235/235), done.
alev@Alejandro:~$ ./UTN-FRA_SO_Examenes/202407_Recu/script_Precondicion.sh
Por favor ejecute: source  ~/.bashrc  && history -a
alev@Alejandro:~$
Vouts@DESKTOP-DUKHL0L MINGW64 /c/vagrant/UTN-FRA_SO_Vagrant/VagrantFiles/segundo_parcial (master)
$ vagrant ssh
==> vagrant: You have enabled the experimental flag with all features enabled.
==> vagrant: Please use with caution, as some of the features may not be fully
==> vagrant: functional yet.
Welcome to Ubuntu 22.04.4 LTS (GNU/Linux 5.15.0-102-generic x86_64)
Expanded Security Maintenance for Applications is not enabled.
60 updates can be applied immediately.
42 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable
1 additional security update can be applied with ESM Apps.
Learn more about enabling ESM Apps service at https://ubuntu.com/esm
Last login: Fri Jul 12 11:43:54 2024 from 10.0.2.2
vagrant@Alejandro:~$ source  ~/.bashrc  && history -a
vagrant@Alejandro:~$ source ~/.bashrc
vagrant@Alejandro:~$ sudo fdisk -l
Disk /dev/loop0: 87.02 MiB, 91246592 bytes, 178216 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (lo
ll
git clone git@github.com:avoutsina/UTNFRA_SO_Recu_2do_Parcial_Voutsina.git
cat .ssh/
cat .ssh/id_rsa.pub 
git clone git@github.com:avoutsina/UTNFRA_SO_Recu_2do_Parcial_Voutsina.git
ll
cp UTN-FRA_SO_Examenes/202407_Recu UTNFRA_SO_Recu_2do_Parcial_Voutsina/ -R
cp RTA_Examen_20240712/ UTNFRA_SO_Recu_2do_Parcial_Voutsina/ -R
