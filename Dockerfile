FROM python
ADD requirements.txt /root
RUN pip install -r /root/requirements.txt
RUN apt-get update
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]