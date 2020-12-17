FROM ubuntu:18.04
RUN apt update && \
 apt install -y rpm2cpio cpio wget gfortran gcc ragel libssl-dev make cmake g++ git autogen \
	pkg-config valgrind libboost-all-dev language-pack-en-base libboost-python-dev python3-dev \
	libsuperlu-dev libopenblas-dev sshpass zlib1g-dev\
	clang-tidy clang libboost-all-dev wget valgrind python-yaml fontconfig python-pip python3-pip\
	libeigen3-dev libsdl2-dev libglew-dev curl \
 && rm -rf /var/lib/apt/lists/* 
RUN apt update && \
    apt install -y clang-9 clang-tidy-9
RUN apt-get update && \
    apt-get install -y make g++ make qt5-qmake qt5-default openssh-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN pip install conan
RUN apt update && apt install -y libopenblas-base libsuperlu-dev && \
    wget -q -O worhp_1.14-0~ubuntu1804.deb https://seafile.zfn.uni-bremen.de/f/27970eb862214d609dbe/?dl=1 && \
    chmod +x worhp_1.14-0~ubuntu1804.deb && apt-get install -y ./worhp_1.14-0~ubuntu1804.deb
ENV LANG en_US.utf-8
