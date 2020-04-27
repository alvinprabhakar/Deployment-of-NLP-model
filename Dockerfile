FROM frolvlad/alpine-python-machinelearning:latest
RUN pip install --upgrade pip
WORKDIR /app
COPY . /app
RUN pip install cython==0.24.1
RUN apk add --update gcc 
RUN pip install -r requirements.txt
RUN python -m nltk.downloader punkt
EXPOSE 5000
ENTRYPOINT ['python']
CMD ['app.py']
