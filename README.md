# Dockerfile for Brightway **25**

Based on the [Jupyter minimal notebook](https://github.com/jupyter/docker-stacks/tree/master/minimal-notebook).

## What it Gives You

* micromamba
* Python 3.12
* Jupyterlab
* brightway25 framework

Docker instances are ephemeral. You will almost certainly want to mount a [data volume](https://docs.docker.com/storage/volumes/).

## Usage

To run an instance of Jupyter Lab, accessible at [localhost:8888](http://localhost:8888/):

    docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes brightway/bw25

Jupyterlab also allows you to run iPython sessions or even a terminal.

See the [Jupyter documentation](https://github.com/jupyter/docker-stacks) for more usage options.


## Installed bw dependencies

The bw25 specific dependencies correspond to the [brightway25 1.1.0](https://github.com/brightway-lca/brightway25) release. 
At build time for this image, they correspond to the following:

| Package Name         | Version | Build              | Channel     |
|----------------------|---------|--------------------|-------------|
| brightway25          | 1.1.0   | py_0               | cmutel      |
| bw2analyzer          | 0.11.7  | pyhd8ed1ab_1       | conda-forge |
| bw2calc              | 2.0.2   | py312h7900ff3_0    | conda-forge |
| bw2data              | 4.4.3   | pyhd8ed1ab_0       | conda-forge |
| bw2io                | 0.9.9   | pyhd8ed1ab_0       | conda-forge |
| bw2parameters        | 1.1.0   | pyhd8ed1ab_1       | conda-forge |
| bw_aggregation       | 1.1     | py_0               | cmutel      |
| bw_graph_tools       | 0.5     | py_0               | cmutel      |
| bw_migrations        | 0.2     | pyhd8ed1ab_1       | conda-forge |
| bw_processing        | 1.0     | pyhd8ed1ab_1       | conda-forge |
| matrix_utils         | 0.6     | pyhd8ed1ab_1       | conda-forge |
| pypardiso            | 0.4.6   | pyhd8ed1ab_2       | conda-forge |
| ecoinvent_interface  | 3.1     | pyhd8ed1ab_1       | conda-forge |


## Tags

### brightway25

The [brightway25](https://github.com/brightway-lca/brightway25) docker images are currently built and
tagged based on the following different components of the image

+ brightway25 metapackage version (1.1.0)
+ python version (py310, py311, py312)
+ the python distribution (micromamba)

The following images are built:

| Image Name | components |
| ---------- | ---------- |
| brightway/bw25:latest | brightway25 1.1.0, py312, micromamba |
| brightway/bw25:1.1.0-py312-micromamba| brightway25 1.1.0, py312, micromamba |
| brightway/bw25:1.1.0-py311-micromamba| brightway25 1.1.0, py311, micromamba |
| brightway/bw25:1.1.0-py310-micromamba| brightway25 1.1.0, py310, micromamba |

