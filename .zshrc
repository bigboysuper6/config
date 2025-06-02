export MY_PING_PATH=/Applications/SASE.app/Contents/Services
export PATH=${MY_PING_PATH}:$PATH
export STARSHIP_CONFIG=~/.config/startship/starship.toml

eval "$(starship init zsh)"

source /Users/jaron/.plugin/oh-my-zsh/colorize.plugin.zsh
source /Users/jaron/.plugin/oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/jaron/.plugin/oh-my-zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
