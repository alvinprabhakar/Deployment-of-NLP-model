FROM frolvlad/alpine-python-machinelearning:latest
RUN pip install --upgrade pip
WORKDIR /app
COPY . /app
RUN apk add --update gcc
RUN apk add python3-dev
RUN pip install -r requirements.txt
RUN python -m nltk.downloader punkt
EXPOSE 5000
ENTRYPOINT ['python']
CMD ['app.py']
