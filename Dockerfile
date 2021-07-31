FROM python
ADD requirements.txt /root
ADD d /bin
RUN chmod +x /bin/d
RUN pip install -r /root/requirements.txt
RUN apt-get update && pip-review --auto
RUN mkdir /root/dictionary && pip freeze > /root/dictionary/requirements.txt
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]