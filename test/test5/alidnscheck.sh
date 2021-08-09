#检测方式：curl 国内机器出口地址，如果返回 Bad Request 则正常
#定义
cu_zhuzhou="116.163.10.131"  #填入需要检测的IP
cu_zhuzhou_id=""  #填入该解析的ID
cu_changzhou
#检测株洲
zhuzhou_test1=`curl --connect-timeout 3 -m 5 $cu_zhuzhou:16617`
zhuzhou_test2=`curl --connect-timeout 3 -m 5 $cu_zhuzhou:16618`
zhuzhou_test3=`curl --connect-timeout 3 -m 5 $cu_zhuzhou/23315` #这里故意有错误，正式请修正/
zhuzhou_test4=`curl --connect-timeout 3 -m 5 $cu_zhuzhou:22286`
#检测常州

#判断是否正常
if [[ $zhuzhou_test1 == "Bad Request" ]] || [[ $zhuzhou_test2 == "Bad Request" ]] || [[ $zhuzhou_test3 == "Bad Request" ]] || [[ $zhuzhou_test4 == "Bad Request" ]]; then 
echo "节点正常，启用解析"
fi
echo $zhuzhou_test1
echo $zhuzhou_test2
