FROM python:latest

RUN export LLVM_CONFIG=/usr/bin/llvm-config-3.7 \
	&& pip2 install jupyter numpy pandas enum34 matplotlib && pip2 install numba \
	&& pip3 install jupyter numpy pandas matplotlib && pip3 install numba \
	&& python2 -m IPython kernel install \
	&& python3 -m IPython kernel install

EXPOSE 8888

VOLUME ["/notebook"]

WORKDIR /notebook

CMD [ "jupyter", "notebook", "--ip", "0.0.0.0" ]
