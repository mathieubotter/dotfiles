# Mathieu's zsh config

## oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Disable shared command history between tabs
unsetopt inc_append_history
unsetopt share_history

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.composer/vendor/bin:/usr/local/share/dotnet"
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#for file in ~/zsh/*.zsh; do
#  source "$file"
#done

# Homebrew settings
HOMEBREW_NO_ANALYTICS=1

# Aliases
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

## Code Editors
CURRENT_EDITOR="atom"
alias atom="$CURRENT_EDITOR ./"
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Mac OS X
alias o='open .'
alias screensaver='/System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'

## Mobile iOS testing
alias ios='open /Applications/Xcode.app/Contents/Applications/iOS\ Simulator.app/'

alias zshconfig="$CURRENT_EDITOR ~/.zshrc"
alias ohmyzsh="$CURRENT_EDITOR ~/.oh-my-zsh"
alias reload!='. ~/.zshrc'

# Easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias -- -="cd -"

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

## Shortcuts
alias cl="clear"
alias ll='ls -al'
alias vi=vim

## Git
alias ga='git add'
alias gi='git commit'
alias gco='git checkout'
alias gl='git lg'
alias gs='git st'
alias gp='git pull'
alias gpsh='git push'

## Switch repos
CODE_DIR=~/Code
c() { cd ${CODE_DIR}/$1; }
_c() { _files -W ${CODE_DIR} -/; }
compdef _c c

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"

# Go
export GOPATH="${CODE_DIR}/Go"
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
