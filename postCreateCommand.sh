#!/usr/bin/bash
# You can put any custom commands in here to modify your environment.
# The script is ran from your workspace directory within the container.
# This means you can execute scripts in your codebase in the container.

# Verify there is a python virtual environment, and add it to the bash config
# file so it automatically activates in new terminals
if [ ! -f env/pyvenv.cfg ]; then
    python -m venv env
fi
echo "source env/bin/activate" >> /home/vscode/.bashrc
