#!/bin/bash
cat << EOF
{ "data" : [
  { "{#ITEMNAME}" : "metric1" },
  { "{#ITEMNAME}" : "metric2" },
  { "{#ITEMNAME}" : "metric3" }
]}
EOF

agenthost="`hostname -f`"
zserver="192.168.112.125"
zport="10051"
log_pwd="/etc/zabbix/zabbix_agentd.d"

cat /dev/null > $log_pwd/zdata.txt
for item in "metric1" "metric2" "metric3"; do
    randnum="$((0 + RANDOM % 100))"
    echo $agenthost otus_important_metrics[$item] $randnum >> $log_pwd/zdata.txt
done

zabbix_sender -vv -z $zserver -p $zport -i $log_pwd/zdata.txt >> $log_pwd/zsender.log 2>&1
