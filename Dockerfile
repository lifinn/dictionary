FROM python:3-alpine
ADD requirements.txt /root
RUN pip install -r /root/requirements.txt
RUN pip-review --auto
ADD dictionary.py /root
ADD d /bin
RUN chmod +x /bin/d
#CMD ["tail", "-f", "/dev/null"]
ENTRYPOINT ["d"]