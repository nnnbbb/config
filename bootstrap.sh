RED='\033[0;31m'
GREEN='\033[0;32m'  # Green
NC='\033[0m'        # No Color

red() {
  echo -e "${RED}${1}${NC}"
}
green() {
  echo -e "${GREEN}${1}${NC}"
}

bash u_source.sh