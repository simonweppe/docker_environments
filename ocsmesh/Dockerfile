# docker build -f Dockerfile -t simonwp:ocsmesh .
# FROM python:3.12-slim
FROM continuumio/miniconda3:latest

# Install tk for TkAgg matplotlib backend (needed for interactive plots via X11)
RUN apt-get update && apt-get install -y --no-install-recommends \
    tk \
    python3-tk \
    wget \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://raw.githubusercontent.com/noaa-ocs-modeling/OCSMesh/main/environment.yml

RUN conda env create -f environment.yml -n ocsmesh
# https://pythonspeed.com/articles/activate-conda-dockerfile/
SHELL ["conda", "run", "-n", "ocsmesh", "/bin/bash", "-c"]
RUN pip install ocsmesh

# Demonstrate the environment is activated:
RUN echo "Make sure ocmesh is installed:"

# set default env for all subsequent RUN, CMD, ENTRYPOINT
ENV CONDA_DEFAULT_ENV=ocsmesh
ENV PATH="/opt/conda/envs/ocsmesh/bin:$PATH"
# optional: activate in interactive shells too
RUN echo "conda activate ocsmesh" >> ~/.bashrc
