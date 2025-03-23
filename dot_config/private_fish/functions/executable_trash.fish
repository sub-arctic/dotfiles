function trash
    # Check if an argument is provided
    if test (count $argv) -eq 0
        echo "Usage: trash <file_or_directory>"
        return 1
    end

    # Move the specified file or directory to ~/.trash
    for item in $argv
        if test -e $item
            mv $item ~/.trash/
            echo "Moved $item to ~/.trash/"
        else
            echo "Error: $item does not exist."
        end
    end
end

