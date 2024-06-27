function add-ssh-key
    if not set -q SSH_AGENT_PID
        eval (ssh-agent -c -t 3600)
        set -l SSH_AGENT_PID $last_pid
        ssh-add ~/.ssh/id_ed25519
    else
        if not kill -0 $SSH_AGENT_PID > /dev/null
            eval (ssh-agent -c -t 3600)
            set -l SSH_AGENT_PID $last_pid
            ssh-add ~/.ssh/id_ed25519
        end
    end
end

function ssh
    add-ssh-key
    command ssh $argv
end
function scp
    add-ssh-key
    command scp $argv
end

fish_vi_key_bindings
