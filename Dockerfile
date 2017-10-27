FROM ubuntu:16.04

MAINTAINER iitaku

RUN export LLVM_CONFIG=/tmp/llvm/bin/llvm-config && \
    export CLANG=/tmp/llvm/bin/clang && \
    apt-get update && \
    apt-get install -y wget make gcc g++ cmake libpng-dev libz-dev &&
    cd /tmp && \
    wget http://releases.llvm.org/5.0.0/clang+llvm-5.0.0-linux-x86_64-ubuntu16.04.tar.xz && \
    tar xf clang+llvm-5.0.0-linux-x86_64-ubuntu16.04.tar.xz --strip-components 1 -C /usr && \
    
