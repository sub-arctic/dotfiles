if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting
function ssh-unlock-key
    if test -z "$SSH_AUTH_SOCK"
        echo "SSH agent is not running. Starting SSH agent..."
        eval (ssh-agent -c)
        ssh-add -t 3600 ~/.ssh/id_ed25519
    end
end

