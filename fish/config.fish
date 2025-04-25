if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    
alias c="clear"
alias e="exit"
alias vim='nvim'
alias bl='bluetui'
alias p='python3'
alias vg='vim pyc/redesigned-hyprland/ultimate-guide.txt'
# source ~/pyc/learning-python/.venv/bin/activate.fish

export HYPRSHOT_DIR="$HOME/Pictures/Screenshots"
function fish_prompt
    set_color c0c0c0
    echo -n (prompt_pwd)
    set_color ffffff
    echo \n"> "
end
end
