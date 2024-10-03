#!/usr/bin/bash
# If you want commands (like pip install -r requirements.txt) to run
# automatically, then you will need to make a file `/postCreateCommand.sh` in
# the root of your main repo (sibling of the `.devcontainer` folder). They will
# be ran in the container after it gets built the first time

# However, do NOT modify this file!! It will check for your custom one. This way
# you edit your repo and store history there, not the '.devcontainer' submodule

if [ -f './postCreateCommand.sh' ]; then
    chmod +x './postCreateCommand.sh'
    ./postCreateCommand.sh
else
    echo 'Want to configure your container? Check out the instructions in:'
    echo ''
    echo '    /.devcontainer/postCreateCommand.sh'
    echo ''
fi
