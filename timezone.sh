append_sting_to_file() {
  file=$1
  string=$2
  if [ -f "$file" ] ; then
    if ! grep -Fxq "$string" "$file"; then
      echo "$string" >> "$file"
    fi
  fi
}

timedatectl set-timezone Asia/Shanghai

append_sting_to_file /etc/default/locale LC_TIME=en_DK.UTF-8