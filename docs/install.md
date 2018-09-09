

!!! tip "注意"
    此教程为Docker安装方式，请确保您的机器支持Docker.

!!! info "提示"
    请确保您的机器上安装了[Docker](https://docs.docker.com/install/)以及[docker-compose](https://docs.docker.com/compose/install/)






## 安装Client

在每个节点上安装client:

```
mkdir /data/monitor-client 
cd /data/monitor-client
wget https://raw.githubusercontent.com/orvice/monitor-client/master/docker-compose.yml
docker-compose up -d
```

!!! info "默认网卡修改"
    默认网卡为eth0,可以在docker-compose.yml里修改 NET_INTERFACE=eth0





## 安装 Server以及UI

下载默认配置:

```
git clone https://github.com/orvice/monitor-deploy.git blackcat
cd blackcat
```

### 配置 server

1. 修改文件 ` config/config.json ` 配置节点信息。
2. 编辑`docker-compose.yml` 文件,修改 ` API_URI=http://domain.com:82 `,地址修改为当前服务器orIP.

完成修改后，启动server&ui:
```
docker-compose up -d
```