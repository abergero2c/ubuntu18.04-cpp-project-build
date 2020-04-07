FROM ubuntu:18.04
RUN apt update && \
 apt install -y rpm2cpio cpio wget gfortran gcc ragel libssl-dev make cmake g++ git autogen \
	pkg-config valgrind libboost-all-dev language-pack-en-base libboost-python-dev python3-dev \
	libsuperlu-dev libopenblas-dev sshpass zlib1g-dev\
	clang-tidy clang libboost-all-dev wget valgrind python-yaml fontconfig python-pip python3-pip\
 && rm -rf /var/lib/apt/lists/* 
RUN apt update && \
    apt install -y clang-8 clang-tidy-8
RUN apt-get update && \
    apt-get install -y make g++ make qt5-qmake qt5-default openssh-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN pip install conan
ENV LANG en_US.utf-8
