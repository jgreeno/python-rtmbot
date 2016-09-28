FROM python:2

WORKDIR /
ADD . /python-rtmbot
RUN cd python-rtmbot \
  && pip install -r requirements.txt \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
ADD run-rtmbot.sh /

CMD sh /run-rtmbot.sh
