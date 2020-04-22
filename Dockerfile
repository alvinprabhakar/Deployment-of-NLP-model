FROM frolvlad/alpine-python-machinelearning:latest
WORKDIR /app
COPY . /app
RUN apk add --update gcc
RUN apk add python3-dev
RUN python3 -m venv env 
RUN pip install -r requirements.txt
RUN python -m nltk.downloader punkt
EXPOSE 5000
ENTRYPOINT ['python']
CMD ['app.py']
