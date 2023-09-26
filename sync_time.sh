#!/bin/bash
status_code=$(curl -LI http://www.baidu.com -o /dev/null -w '%{http_code}\n' -s)
echo $status_code

if [ "$status_code" == "200" ]; then
  echo "case"
  date -s "$(wget --method=HEAD -qSO- --max-redirect=0 baidu.com 2>&1 | sed -n 's/^ *Date: *//p')"
fi

