安装cnsync

rm -rf /usr/bin/cnsync ; wget https://ghproxy.com/https://raw.githubusercontent.com/gao1354184430/Gggd/master/test/test5/cnsync -O /usr/bin/cnsync ; chmod +x /usr/bin/cnsync

同步使用cnsync cron
监控开关在crontab开启/关闭
*/2 * * * * cnsync cron

安装haproxy（电信全端口转发）

rm -rf /root/haproxy.sh  ; wget https://ghproxy.com/https://raw.githubusercontent.com/gao1354184430/Gggd/master/test/test5/haproxy.sh -O /root/haproxy.sh ; chmod +x /root/haproxy.sh ; /root/haproxy.sh

同步使用 /root/haproxy.sh sync
监控开关在crontab开启/关闭
*/2 * * * * /root/haproxy.sh cron
