FROM python:latest

RUN echo "deb http://apt.llvm.org/jessie/ llvm-toolchain-jessie-3.8 main" >> /etc/apt/sources.list \
    && wget -O - http://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add - \
    && apt-get update && apt-get install -y \
        libedit-dev \
        llvm-3.8 \
    && rm -rf /var/lib/apt/lists/*

RUN export LLVM_CONFIG=/usr/bin/llvm-config-3.8 \
    && pip2 install jupyter numpy pandas enum34 matplotlib sympy && pip2 install numba \
    && pip3 install jupyter numpy pandas matplotlib sympy && pip3 install numba \
    && python2 -m IPython kernel install \
    && python3 -m IPython kernel install

EXPOSE 8888

VOLUME ["/notebook"]

WORKDIR /notebook

CMD [ "jupyter", "notebook", "--ip", "0.0.0.0" ]
