script_dir=$(dirname "$0")
source "$script_dir/utils.sh"

if ! command_exists zsh; then
  echo "install zsh" 
  sudo apt install zsh -y
  sudo chsh -s /bin/zsh
else
 	echo "zsh is installed"
fi

if ! [ -d ~/.oh-my-zsh ]; then
 	echo "oh-my-zsh is not installed"
  sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"
else
	echo "oh-my-zsh is installed"
fi

if ! command_exists starship; then
  echo "install starship" 
  if ! [ -e "starship_install.sh" ]; then
    curl -o starship_install.sh -sS https://starship.rs/install.sh
  fi
  sed -i "s/https:\/\/github.com/https:\/\/ghproxy.com\/https:\/\/github.com/g" starship_install.sh && sudo sh starship_install.sh
  append_sting_to_file  ~/.zshrc 'eval "$(starship init zsh)"'
  mkdir -p ~/.config && touch ~/.config/starship.toml
else
 	echo "starship is installed"
fi



