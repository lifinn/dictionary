FROM python:3-alpine
ADD requirements.txt /root
RUN pip install -r /root/requirements.txt
RUN pip-review --auto
ADD dict.pyc /root
ADD d /bin
ADD dr /bin
ADD de /bin
RUN chmod +x /bin/d /bin/dr /bin/de 
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]