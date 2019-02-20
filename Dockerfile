ARG BASE_IMAGE
FROM ${BASE_IMAGE}
USER root
RUN yum -y install nss_wrapper gettext fuse curl jsoncpp ossim ossim-kakadu-plugin \
ossim-web-plugin ossim-jpeg12-plugin ossim-sqlite-plugin \
ossim-geopdf-plugin ossim-png-plugin ossim-gdal-plugin ossim-atp-plugin \
ossim-aws-plugin && yum clean all
USER 1001
