FROM python
ADD requirements.txt /root
ADD d /bin
RUN chmod +x /bin/d
RUN pip install -r /root/requirements.txt
RUN apt-get update && pip install pip-review && pip-review --auto
RUN pip freeze > /root/dictionary/requirements.txt
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]