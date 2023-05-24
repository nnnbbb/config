script_dir=$(dirname "$0")
source "$script_dir/utils.sh"

timedatectl set-timezone Asia/Shanghai

append_sting_to_file 'LC_TIME=en_DK.UTF-8' /etc/default/locale 