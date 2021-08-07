#!/bin/bash
#远端文件储存地址
#升级内容开始
function update() {
		echo "[Unit]
Description=The nginx HTTP and reverse proxy server
After=syslog.target network.target remote-fs.target nss-lookup.target
 
[Service]
Type=forking
PIDFile=/usr/local/nginx/logs/nginx.pid
ExecStartPre=/usr/local/nginx/sbin/nginx -t
ExecStart=/usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/nginx.conf
ExecReload=/usr/local/nginx/sbin/nginx -s reload
ExecStop=/bin/kill -s QUIT $MAINPID
PrivateTmp=true
 
[Install]
WantedBy=multi-user.target" >/lib/systemd/system/nginx.service
systemctl daemon-reload
rm -rf /usr/bin/cnsync ; wget https://ghproxy.net/https://raw.githubusercontent.com/gao1354184430/Gggd/master/test/test5/cnsync -O /usr/bin/cnsync ; chmod +x /usr/bin/cnsync
}
function menu_server() {
  echo && echo -e "  临时用升级脚本
 ————————————
 1.修复Tengine使其支持重载配置
 2.更新cnsync：独立GKD配置文件，使用Nginx重载配置代替重启
————————————
" &&echo 
  echo
  read -erp " 请回车确认升级:" Num
  if [[ $Num == "" ]] ; then 
echo "开始升级"
update
echo "升级完成"
else
echo "终止程序，取消升级"
fi
}
menu_server