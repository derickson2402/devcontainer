FROM mcr.microsoft.com/devcontainers/python:3.12

RUN apt update -y && \
    apt install -y \
        wget \
        curl \
        git-lfs \
        tree && \
    pip install \
        pdbp \
        pytest \
        pigar
