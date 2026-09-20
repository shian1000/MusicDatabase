#!/bin/bash

# Go to the project directory (important for double-click)
cd "$(dirname "$0")"

# Double-clicking in the file manager runs this with no TTY attached,
# so the interactive menu blocks silently. Relaunch inside a terminal.
if [ ! -t 0 ]; then
    exec konsole --workdir "$(pwd)" -e "$0"
fi

ssh -t shianman@100.116.249.111 'cd ~/Documents/Code/MusicDatabase && ./MusicDatabase.sh'
