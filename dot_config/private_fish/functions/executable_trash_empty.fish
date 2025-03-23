function trash_empty
    set -l force false

    # Parse options
    for arg in $argv
        switch $arg
            case '-f'
                set force true
            case '*'
                echo "Usage: trash empty [-f]"
                return 1
        end
    end

    # Check if the trash directory is empty
    if test (count (ls -A ~/.trash)) -eq 0
        echo "Trash is already empty."
        return 0
    end

    # Prompt for confirmation if not forced
    if not $force
        echo "Are you sure you want to empty the trash? (Y/N/A)"
        read -l response

        switch $response
            case 'Y'
                set confirm true
            case 'N'
                echo "Aborted."
                return 0
            case 'A'
                echo "Aborting."
                return 0
            case '*'
                echo "Invalid response. Aborting."
                return 1
        end
    end

    # Empty the trash
    rm -rf ~/.trash/*
    echo "Trash has been emptied."
end

