FROM python:latest

RUN pip2 install jupyter \
	&& pip3 install jupyter \
	&& python2 -m IPython kernel install \
	&& python3 -m IPython kernel install

EXPOSE 8888

VOLUME ["/notebook"]

WORKDIR /notebook

CMD [ "jupyter", "notebook", "--ip", "0.0.0.0" ]
