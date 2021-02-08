## 配置文件对应表

**Brook**配置文件 `brook.conf`

**VNET**配置文件 `client.conf`

**GOST**配置文件 `config.json`

**HaProxy**配置文件 `haproxy.cfg`

## 快速部署-在国内机器和月抛机器上进行快速部署

**安装cnsync（一键同步Brook/VNET/GOST）**

    rm -rf /usr/bin/cnsync ; wget https://ghproxy.com/https://raw.githubusercontent.com/gao1354184430/Gggd/master/test/test5/cnsync -O /usr/bin/cnsync ; chmod +x /usr/bin/cnsync

同步使用

    cnsync cron

**安装haproxy（电信10000-40000端口转发）**

    rm -rf /root/haproxy.sh  ; wget https://ghproxy.com/https://raw.githubusercontent.com/gao1354184430/Gggd/master/test/test5/haproxy.sh -O /root/haproxy.sh ; chmod +x /root/haproxy.sh ; /root/haproxy.sh

同步使用 

    /root/haproxy.sh sync


监控开关在crontab开启/关闭

    */2 * * * * cnsync cron
    */2 * * * * /root/haproxy.sh cron

|  同步   |   服务器  |   同步项目  |     
| --- | --- | --- |
|  是   |   镇江200M  |   haproxy  |     
|   否  |  长沙1   |   vnet/gost/nginx  |     
|   否  |  长沙2  |   vnet/gost/nginx  |
|   否  |  广州2  |   vnet/gost/nginx  |