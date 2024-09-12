# Python Devcontainer for Web Development

Devcontainer set up for Python web development.
No python packages are installed by default except those for basic development.
You should specify which packages and versions you need [as shown below](#customizing-the-container).

## Customizing the container

There is a script called ```postCreateCommand.sh```.
You can add bash commands to this which will be executed in the container after it is created.

```bash
#!/usr/bin/bash
# You can put any custom commands in here to modify your environment.
# The script is ran from your workspace directory within the container.
# This means you can execute scripts in your codebase in the container.

# You could install some packages
apt install -y package-1 package-2
pip install -r ./requirements.txt
pip install jinja2 flask

# Use a python virtual environment by default (make sure to generate the virtual
# environment or this will cause an error)
echo "source env/bin/activate" >> .bashrc

# You can modify your bash prompt by setting the PS1 env variable
echo "PS1=\[\e[0;1;38;5;82m\]devcontainer ~\[\e[0m\] "
```
