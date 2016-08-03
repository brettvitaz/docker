FROM buildpack-deps:jessie

ENV PYTHON2_VERSION 2.7.12
ENV PYTHON3_VERSION 3.5.2

RUN apt-get update && apt-get install -y --no-install-recommends \
		sudo \
		git \
		wget \
		curl \
		make \
		build-essential \
		libssl-dev \
		zlib1g-dev \
		libbz2-dev \
		libreadline-dev \
		libsqlite3-dev \
		libncurses5-dev \
		libncursesw5-dev \
    && rm -rf /var/lib/apt/lists/*

RUN echo "deb http://apt.llvm.org/jessie/ llvm-toolchain-jessie-3.7 main" >> /etc/apt/sources.list \
	&& wget -O - http://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add - \
 	&& apt-get update && apt-get install -y \
 		libedit-dev \
 		llvm-3.7 \
    && rm -rf /var/lib/apt/lists/*

RUN curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash \
	&& echo "export PATH=\"$HOME/.pyenv/bin:$HOME/.pyenv/plugins/python-build/bin:\$PATH\"" >> ~/.pyenvrc \
	&& echo "eval \"\$(pyenv init -)\"" >> ~/.pyenvrc \
	&& echo "eval \"\$(pyenv virtualenv-init -)\"" >> ~/.pyenvrc \
	&& echo ". ~/.pyenvrc" >> ~/.bashrc \
	&& . ~/.pyenvrc \
    && python-build $PYTHON2_VERSION /usr/local \
    && pip2 install --upgrade pip setuptools \
    && python-build $PYTHON3_VERSION /usr/local \
    && pip3 install --upgrade pip setuptools
