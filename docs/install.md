

!!! tip "注意"
    此教程为Docker安装方式，请确保您的机器支持Docker.

!!! info
    请确保您的机器上安装了Docker以及docker-compose






## 安装Client

```
mkdir /data/monitor-client 
cd /data/monitor-client
wget https://raw.githubusercontent.com/orvice/monitor-client/master/docker-compose.yml
docker-compose up -d
```


## 安装 Server以及UI

```
git clone https://github.com/orvice/monitor-deploy.git blackcat
cd blackcat
docker-compose up -d
```