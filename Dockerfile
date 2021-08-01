FROM python
ADD requirements.txt /root
RUN pip install -r /root/requirements.txt
RUN apt-get update && pip-review --auto
ADD dict.pyc /root
ADD d /bin
RUN chmod +x /bin/d
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]