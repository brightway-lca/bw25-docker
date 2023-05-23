FROM jupyter/minimal-notebook:python-3.10

# Some stuff from https://github.com/jupyter/docker-stacks/blob/master/scipy-notebook/Dockerfile
MAINTAINER Chris Mutel <cmutel@gmail.com>

USER $NB_USER

RUN conda install --quiet --yes wheel && \
    conda update --yes pip wheel setuptools

# Install Python 3 packages

ARG REQUIREMENTS_FILE="requirements.txt"
COPY ${REQUIREMENTS_FILE} /tmp/
RUN conda install -y -q -c conda-forge -c cmutel --file /tmp/${REQUIREMENTS_FILE} && conda clean --all
RUN fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

RUN mkdir /home/jovyan/data
RUN mkdir /home/jovyan/notebooks
RUN mkdir /home/jovyan/output

ENV BRIGHTWAY2_DIR /home/jovyan/data
ENV BRIGHTWAY2_DOCKER 1
ENV BRIGHTWAY2_OUTPUT_DIR /home/jovyan/output

ENV XDG_CACHE_HOME="/home/${NB_USER}/.cache/"

RUN MPLBACKEND=Agg python -c "import matplotlib.pyplot" && \
    fix-permissions "/home/${NB_USER}"

USER $NB_UID

WORKDIR /home/jovyan/notebooks
