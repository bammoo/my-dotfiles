# Theme with full path names and hostname
# Handy if you work on different servers all the time;

local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"

# function git_prompt_info() {
#   ref=$(git symbolic-ref HEAD 2> /dev/null) || return
#   echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
# }

# get the name of the branch we are on
function git_prompt_info() {
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

# function hg_ps1() {
#   hg prompt "$ZSH_THEME_HG_PROMPT_PREFIX{{branch}}{ at {bookmark}}{status}$ZSH_THEME_HG_PROMPT_SUFFIX" 2> /dev/null
# }

function my_git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	GIT_STATUS=$(git_prompt_status)
	[[ -n $GIT_STATUS ]] && GIT_STATUS=" $GIT_STATUS"
	echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$GIT_STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# Colored prompt
ZSH_THEME_COLOR_USER="green" 
ZSH_THEME_COLOR_HOST="green" 
ZSH_THEME_COLOR_PWD="yellow" 
test -n "$SSH_CONNECTION" && ZSH_THEME_COLOR_USER="red" && ZSH_THEME_COLOR_HOST="red"
test `id -u` = 0 && ZSH_THEME_COLOR_USER="magenta" && ZSH_THEME_COLOR_HOST="magenta"
# PROMPT='%{$fg_bold[$ZSH_THEME_COLOR_USER]%}%n@%{$fg_bold[$ZSH_THEME_COLOR_HOST]%}%M%{$reset_color%}:%{$fg_bold[$ZSH_THEME_COLOR_PWD]%}%~%{$reset_color%} $(my_git_prompt_info)%(!.#.$) '
RPS1="${return_code}"

ZSH_THEME_HG_PROMPT_PREFIX="%{$fg[red]%}(hg:"
ZSH_THEME_HG_PROMPT_SUFFIX=") %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}(git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=") %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%%"
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_MODIFIED="*"
ZSH_THEME_GIT_PROMPT_RENAMED="~"
ZSH_THEME_GIT_PROMPT_DELETED="!"
ZSH_THEME_GIT_PROMPT_UNMERGED="?"

PROMPT='%{$fg[cyan]%}%n: %{$fg[yellow]%}%~%{$reset_color%} $(git_prompt_info)→ '