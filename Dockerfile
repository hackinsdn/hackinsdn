FROM amlight/kytos:latest
MAINTAINER Italo Valcy <italo@amlight.net>

ARG branch_containment=master
ARG branch_mirror=master

RUN python3 -m pip install -e git+https://github.com/hackinsdn/containment@${branch_containment}#egg=hackinsdn-containment \
 && python3 -m pip install -e git+https://github.com/hackinsdn/mirror@${branch_mirror}#egg=hackinsdn-mirror \
