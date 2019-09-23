ARG BASE_IMAGE
FROM ${BASE_IMAGE}

MAINTAINER Liam Bindle <liam.bindle@gmail.com>

ARG SPACK_INSTALL_SPEC
RUN source /usr/local/Modules/init/bash \
&&  . ${SPACK_ROOT}/share/spack/setup-env.sh \
&&  spack install ${SPACK_INSTALL_SPEC}