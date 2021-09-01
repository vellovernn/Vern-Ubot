# We're using Ubuntu 20.10
FROM vckyouuu/geezprojects:buster

RUN git clone -b Vern-Ubot https://github.com/vellovern/Vern-Ubot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/vellovern/Vern-Ubot/Vern-Ubot/requirements.txt

CMD ["python3","-m","userbot"]
