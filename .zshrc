fpath=(/usr/local/share/zsh-completions $fpath)

export LANG=ja_JP.UTF-8

autoload -Uz colors
colors

bindkey -e

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

autoload -Uz select-word-style
select-word-style default

zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

autoload -Uz compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
PROMPT="%{${fg[red]}%}[%n@%m] %{$fg[blue]%}%1~%{$reset_color%} %{${reset_color}%}%1(v|%F{green}%1v%f|)$ "

setopt print_eight_bit

setopt no_beep

setopt no_flow_control

setopt interactive_comments

setopt auto_cd

setopt auto_pushd
setopt pushd_ignore_dups

setopt magic_equal_subst

setopt share_history
setopt hist_ignore_all_dups
setopt hist_save_nodups
setopt hist_ignore_space
setopt hist_reduce_blanks

setopt auto_menu

setopt extended_glob

alias ls='ls -G -F'

export PATH=$HOME/bin:$PATH
export PATH=/usr/local/bin:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

export PYENV_ROOT=$HOME/.pyenv
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/shims:$PATH
    eval "$(pyenv init -)"
fi
