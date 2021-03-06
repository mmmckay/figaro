FROM python:3.6.7

MAINTAINER Michael M. Weinstein, Zymo Research
LABEL version="1.0.0"

RUN mkdir /opt/figaro
WORKDIR /opt/figaro

COPY . /opt/figaro

RUN cd /opt/figaro &&\
    pip3 install --upgrade pip &&\
    python3 setup.py bdist_wheel &&\
    pip3 install --force-reinstall dist/*.whl

ENTRYPOINT ["figaro"]