# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
# ls aliases
alias la="ls -la"
alias ll='ls -alF'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# vim alias
alias vim=nvim
# git aliases
alias g=git
alias gs="git status"
alias ga="git add -A ."
alias gc="git commit"
alias gb="git branch"
alias gd="git diff"
alias gco="git checkout"
alias gp="git push"
alias gl="git pull"
alias gt="git tag"
alias gm="git merge"
alias gf="git fetch"
alias gfp="git fetch --prune"
alias gg="git log --graph --pretty=format:'%C(bold red)%h%Creset -%C(bold yellow)%d%Creset %s %C(bold green)(%cr) %C(bold blue)<%an>%Creset %C(yellow)%ad%Creset' --abbrev-commit --date=short"
alias ggr="git log --reverse --pretty=format:'%C(bold red)%h%Creset -%C(bold yellow)%d%Creset %s %C(bold green)(%cr) %C(bold blue)<%an>%Creset %C(yellow)%ad%Creset' --abbrev-commit --date=short"
alias gcp="git cherry-pick"
alias gcpc="git cherry-pick --continue"
alias gcpa="git cherry-pick --abort"
alias gbg="git bisect good"
alias gbb="git bisect bad"

# tmux
alias tmls="tmux ls"
alias tma="tmux a"

# utilities
alias cp="cp -i" # confirm before overwriting something
alias grep="grep --colour=auto"
alias cal="ncal -b"
