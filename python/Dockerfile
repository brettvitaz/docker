FROM buildpack-deps:jessie

ENV PYTHON2_VERSION 2.7.12
ENV PYTHON3_VERSION 3.5.2

RUN apt-get update && apt-get install -y --no-install-recommends \
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
		llvm \
		libncurses5-dev \
		libncursesw5-dev \
    && rm -rf /var/lib/apt/lists/*

RUN curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash \
	&& export PATH="/root/.pyenv/bin:/root/.pyenv/plugins/python-build/bin:$PATH" \
    && eval "$(pyenv init -)" \
    && eval "$(pyenv virtualenv-init -)" \
    && python-build $PYTHON2_VERSION /usr/local \
    && pip2 install --upgrade pip setuptools \
    && python-build $PYTHON3_VERSION /usr/local \
    && pip3 install --upgrade pip setuptools \
    && pip3 install virtualenv
