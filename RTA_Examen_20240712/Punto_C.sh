cd UTN-FRA_SO_Examenes/202407_Recu/docker/
cd web
sudo vim index.html
docker login -u alejandrovoutsina
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
echo -n CPU Modelo: > info.txt
cat /proc/cpuinfo | grep 'model name' | tail -n1 | awk -F ':' '{print }' >> info.txt
echo -n Frecuencia: >> info.txt
cat /proc/cpuinfo | grep 'cpu MHz' | tail -n1 | awk -F ':' '{print }' >> info.txt
cat info.txt
ll
cd ..
ll
cd ..
ll
vim docker-compose.yml
docker compose up -d
