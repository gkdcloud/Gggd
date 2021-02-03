## 配置文件对应表

**Brook配置文件** `brook.conf`

**VNET配置文件** `client.conf`

**GOST配置文件** 
>config.json

**HaProxy配置文件** 
>haproxy.cfg

## 快速部署-在国内机器和月抛机器上进行快速部署

**安装cnsync（一键同步Brook/VNET/GOST）**

    rm -rf /usr/bin/cnsync ; wget https://ghproxy.com/https://raw.githubusercontent.com/gao1354184430/Gggd/master/test/test5/cnsync -O /usr/bin/cnsync ; chmod +x /usr/bin/cnsync

同步使用

    cnsync cron

**安装haproxy（电信10000-50000端口转发）**

    rm -rf /root/haproxy.sh  ; wget https://ghproxy.com/https://raw.githubusercontent.com/gao1354184430/Gggd/master/test/test5/haproxy.sh -O /root/haproxy.sh ; chmod +x /root/haproxy.sh ; /root/haproxy.sh

同步使用 

    /root/haproxy.sh sync


监控开关在crontab开启/关闭

    */2 * * * * cnsync cron
    */2 * * * * /root/haproxy.sh cron
