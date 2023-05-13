RED='\033[0;31m'
GREEN='\033[0;32m'  # Green
NC='\033[0m'        # No Color

red() {
  echo -e "${RED}${1}${NC}"
}
green() {
  echo -e "${GREEN}${1}${NC}"
}

# 命令是否存在
command_exists() {
  command -v "$@" >/dev/null 2>&1
}

# 添加字符串到文件, 文件内字符串已存在不添加
append_sting_to_file() {
  file=$1
  string=$2
  if [ -f "$file" ] ; then
    if ! grep -Fxq "$string" "$file"; then
      echo "$string" >> "$file"
    fi
  fi
}
