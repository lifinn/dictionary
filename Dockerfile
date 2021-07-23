FROM python
ADD requirements.txt /root
RUN pip install -r /root/requirements.txt
RUN apt-get update
ENV dict="python /root/dictionary/dictionary.py"
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]