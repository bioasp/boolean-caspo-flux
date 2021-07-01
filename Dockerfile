FROM colomoto/colomoto-docker:2021-02-01

USER root
RUN apt update \
    && apt install -y libglpk-java jq unzip fonts-freefont-ttf \
    && apt clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache python-libsbml==5.19.0

ARG BONESIS_VERSION=6a6a7cf2731abc0e664b10146d03824f91c4a955
RUN pip install --no-deps --no-cache https://github.com/bioasp/bonesis/archive/$BONESIS_VERSION.zip

RUN rm -rf /notebook/*
COPY --chown=user:user *.ipynb /notebook/
COPY --chown=user:user data /notebook/data/
COPY --chown=user:user dist /notebook/dist/
COPY --chown=user:user simulations /notebook/simulations/

USER user
