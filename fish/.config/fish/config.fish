set fish_greeting ""

if status is-interactive

end
    # Commands to run in interactive sessions can go here
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/ivan/anaconda3/bin/conda
    eval /home/ivan/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
        echo sudo $history[1]
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end


source "$HOME/.config/fish/aliases.fish"
source "$HOME/.config/fish/functions/convenience.fish"
source "$HOME/.config/fish/functions/set.fish"
source "$HOME/.config/fish/functions/keymap.fish"
