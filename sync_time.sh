#!/bin/bash
status_code=$(curl -LI http://www.baidu.com -o /dev/null -w '%{http_code}\n' -s)
echo $status_code

if [ "$status_code" == "200" ]; then
  echo "case"
  cd /home && date -s "$(wget -S  "http://www.baidu.com/" 2>&1 | grep -E '^[[:space:]]*[dD]ate:' | sed 's/^[[:space:]]*[dD]ate:[[:space:]]*//' | head -1l | awk '{print $1, $3, $2,  $5 ,"GMT", $4 }' | sed 's/,//')" && rm index.html
fi

