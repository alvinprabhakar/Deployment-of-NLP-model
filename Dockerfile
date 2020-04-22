FROM frolvlad/alpine-python-machinelearning:latest
RUN pip install --upgrade pip
WORKDIR /app
COPY . /app
RUN apk add --update gcc
RUN apt-get update && apt-get install -y python3-venv build-essential python3-dev
RUN python3 -m venv env 
RUN pip install -r requirements.txt
RUN python -m nltk.downloader punkt
EXPOSE 5000
ENTRYPOINT ['python']
CMD ['app.py']
