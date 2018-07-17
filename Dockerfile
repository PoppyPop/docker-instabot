FROM python:alpine3.7

RUN mkdir /app && \
	apk add --update git tzdata && \
	pip install -U git+https://github.com/instagrambot/instabot.git@master && \
	pip install -U schedule && \
	git clone https://github.com/instagrambot/instabot --recursive
	
EXPOSE 80

WORKDIR /app

VOLUME /app

CMD python
