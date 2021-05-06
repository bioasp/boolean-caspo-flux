
Notebooks to reproduce the results from ["Learning Boolean controls in regulatedmetabolic networks: a case-study" by Thuillier et al.](https://hal.archives-ouvertes.fr/hal-03207589)

They can be visualized at https://nbviewer.jupyter.org/github/bioasp/boolean-caspo-flux/tree/main/.

They can be executed within the provided [Docker](https://docker.io) environment:
* online (without any installation), using [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/bioasp/boolean-caspo-flux/main)
* or locally, provided Docker is installed:
```
docker build -t boolean-caspo-flux .
docker run -it --rm -p 8888:8888 -v $PWD:/notebook boolean-caspo-flux
```
then point your browser to http://127.0.0.1:8888.
