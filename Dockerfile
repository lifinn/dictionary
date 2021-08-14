FROM python:3-alpine
ADD requirements.txt /root
RUN pip install -r /root/requirements.txt
RUN pip-review --auto
ADD dict.pyc /root
ADD d /bin
RUN chmod +x /bin/d
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]