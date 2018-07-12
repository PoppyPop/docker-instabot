FROM python:alpine3.7

RUN mkdir /app && cd /app && \
	apk add --update git tzdata && \
	pip install -U instabot schedule && \
	git clone https://github.com/instagrambot/instabot --recursive
	
EXPOSE 80

WORKDIR /app

CMD python
