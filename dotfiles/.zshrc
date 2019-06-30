# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH



# Path to your oh-my-zsh installation.
export ZSH="/Users/divyanshu/.oh-my-zsh"



# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="hyper-oh-my-zsh"



# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )



# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"



# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"



# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"



# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13



# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"



# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"



# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"



# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"



# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"



# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"



# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder



# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.



function bgnotify_formatted {
  ## $1=exit_status, $2=command, $3=elapsed_time
  [ $1 -eq 0 ] && title="Done" || title="Great Scott! 🚗"
  bgnotify "$title in $3 s" "$2";
}



plugins=(
  git
#  zsh-syntax-highlighting
  bgnotify
#  zsh-autosuggestions
  z
  sudo
  web-search
)



source $ZSH/oh-my-zsh.sh



# User configuration



# export MANPATH="/usr/local/man:$MANPATH"



# You may need to manually set your language environment
# export LANG=en_US.UTF-8



# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi



# Compilation flags
# export ARCHFLAGS="-arch x86_64"



# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"



# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



alias gs="git status"
alias gl="git pull"
alias gh="git push"
alias gc="git checkout"
alias gd="git diff"
alias gdc="git diff --cached"
alias gg="git log"
alias ga="git add"
alias gm="git commit"
alias gf="git fetch"
alias y="yarn"
alias ys="yarn start"
alias yd="yarn dev"
alias yw="yarn watch"
alias yb="yarn build"
alias yt="yarn test"
alias yf="yarn flow"
alias cra="npx create-react-app"
alias crna="npx create-react-native-app"



alias n10="sudo n stable"
alias n8="sudo n lts"



alias rni="react-native run-ios"



alias divlog="git log --after='(date -v-1d +%F 00:00:00)' --before='(date)'"
alias lintpy="isort -rca && flake8"


export REACT_EDITOR="code"
export GPG_TTY=$(tty)


# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# export PATH="/usr/local/opt/elasticsearch@6.4/bin:$PATH"
# export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_HOME=$(brew --prefix)/share/android-sdk
# export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=${PATH}:/usr/local/mysql/bin/
export PATH=$ANDROID_HOME/build-tools/$(ls $ANDROID_HOME/build-tools | sort | tail -1):$PATH


# reaction
# ulimit -n 65536 65536
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export BETTER_EXCEPTIONS=0
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# shake phone
alias shake-a="adb shell input keyevent 82"
alias emulator="$ANDROID_HOME/tools/emulator -avd Android6"

# zsh plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
