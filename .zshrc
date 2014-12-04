# Path to your oh-my-zsh configuration.

ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/dotfiles/my-dotfiles/zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="test"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git history mercurial)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/share/npm/bin:$PATH

REPO_SB=$HOME/wdd/event.ifanr.com
REPO_THEME=$HOME/wdd/www.ifanr.com/wp-content/themes/apple4us
REPO_PLUGINS=$HOME/wdd/www.ifanr.com/wp-content/plugins
source /Users/apple/perl5/perlbrew/etc/bashrc

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# nodejs library
export PATH=$HOME/local/bin:$PATH

export PATH=/opt/local/bin:$PATH

export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:/Users/apple/perl5";
export PERL_MB_OPT="--install_base /Users/apple/perl5";
export PERL_MM_OPT="INSTALL_BASE=/Users/apple/perl5";
export PERL5LIB="/Users/apple/perl5/lib/perl5:$PERL5LIB";
export PATH="/Users/apple/perl5/bin:$PATH";

eval "$(fasd --init posix-alias zsh-hook)"

if [ -f ~/dotfiles/my-dotfiles/.aliases ]; then
  . ~/dotfiles/my-dotfiles/.aliases
fi

. ~/dotfiles/my-dotfiles/ip