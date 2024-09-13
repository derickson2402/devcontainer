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
		# needed for html5validator
		default-jre \
		sqlite3

# There is an error that can pop up if a repo is created on the host and opened
# in the tutorial. We tell git to trust all repositories to avoid the issue.
# Also we will enable pretty sql printing
WORKDIR /home/vscode
RUN echo "[safe]\n\tdirectory = /workspaces/*" >> .gitconfig \
	&& echo ".mode column\n.header on" >> .sqliterc
