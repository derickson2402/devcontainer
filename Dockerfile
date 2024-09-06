# Using root of this repo as build context
FROM mcr.microsoft.com/devcontainers/python:3.12

# Install Node
RUN curl -fsSL https://deb.nodesource.com/setup_22.x \
	| sudo -E bash - \
	&& apt update -y \
	&& apt install -y nodejs

# Install python and system tools needed for development, then later we will
# install modules for the app
RUN pip install pdbp pytest pigar \
	&& apt update -y \
	&& apt install -y \
		tree \
		wget \
		curl \
		vim \
		default-jre

# Add python venv to bash and the git repo to safe list (avoids error that pops
# up on first open)
WORKDIR /home/vscode
RUN echo "source env/bin/activate" >> .bashrc \
	&& echo "[safe]\n\tdirectory = /workspaces/*" >> .gitconfig
