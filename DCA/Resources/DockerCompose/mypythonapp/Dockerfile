FROM python:2.7
# Avoid error: invoke-rc.d: policy-rc.d denied execution of start.
RUN echo exit 0 > /usr/sbin/policy-rc.d
WORKDIR /usr/src/app
RUN pip install mysql-connector-python
RUN pip install mysql-connector-python-rf
COPY . .
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y default-mysql-client