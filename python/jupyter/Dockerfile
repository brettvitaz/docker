FROM python:latest

RUN pip3 install jupyter

EXPOSE 8888

VOLUME ["/notebook"]

WORKDIR /notebook

CMD [ "jupyter", "notebook", "--ip", "0.0.0.0" ]
