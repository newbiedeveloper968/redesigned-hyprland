if status is-interactive
    # Commands to run in interactive sessions can go here

alias c="clear"
alias e="exit"
alias vim='nvim'
alias bl='bluetui'
alias ta='todo.sh add'
alias tl='todo.sh list'
alias td='todo.sh do'
function fish_prompt
    set_color c0c0c0
    echo -n (prompt_pwd)
    set_color ffffff
    echo \n"> "
end
end
