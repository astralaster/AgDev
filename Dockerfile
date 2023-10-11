FROM ubuntu:22.04
RUN apt update
RUN apt install -y gcc git make wget
RUN mkdir work
WORKDIR /work
RUN wget https://github.com/CE-Programming/toolchain/releases/latest/download/CEdev-Linux.tar.gz
RUN tar -xzf CEdev-Linux.tar.gz
RUN git clone https://github.com/pcawte/AgDev.git
RUN cp -r AgDev/* CEdev/
ENV PATH=/work/CEdev/bin:$PATH
