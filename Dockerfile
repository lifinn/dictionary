FROM python
ADD requirements.txt /root
RUN pip install -r /root/requirements.txt
RUN apt-get update
RUN export dic=$(python /root/dictionary/dictionary.py)
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]