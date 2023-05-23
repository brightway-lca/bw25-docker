# Dockerfile for Brightway **25**

Based on the [Jupyter minimal notebook](https://github.com/jupyter/docker-stacks/tree/master/minimal-notebook).

## What it Gives You

* Miniconda
* Python 3.10
* Jupyterlab
* brightway25 framework

Docker instances are ephemeral. You will almost certainly want to mount a [data volume](https://docs.docker.com/storage/volumes/).

## Usage

To run an instance of Jupyter Lab, accessible at [localhost:8888](http://localhost:8888/):

    docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes brightway/bw25

Jupyterlab also allows you to run iPython sessions or even a terminal.

See the [Jupyter documentation](https://github.com/jupyter/docker-stacks) for more usage options.

## Tags

### brightway25

The [brightway25](https://github.com/brightway-lca/brightway25) docker images are currently built and
tagged based on the following different components of the image

+ brightway25 metapackage version (1.0.6)
+ python version (py310, py311, py312)
+ the python distribution (official python 3 or miniconda3)
+ Ecoinvent 3.X compatibility (3.8, 3.9) version [^1]

The following images are built:

| Image Name | components |
| ---------- | ---------- |
| brightway/bw25:latest | brightway25 1.0.6, py310, miniconda3, compatible with ecoinvent 3.9 |



[^1]: Until a release of [bw2io](https://github.com/brightway-lca/brightway2-io) that is compatible with any ecoinvent version and all bw2x.
