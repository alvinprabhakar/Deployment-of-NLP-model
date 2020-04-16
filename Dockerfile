FROM frolvlad/alpine-python-machinelearning:latest
RUN pip install --upgrade pip
WORKDIR /app
COPY . /app
RUN apk add --no-cache --virtual .build-deps gcc musl-dev \
     && pip install cython \
     && apk del .build-deps gcc musl-dev
RUN pip install -r requirements.txt
RUN python -m nltk.downloader punkt
EXPOSE 5000
ENTRYPOINT ['python']
CMD ['app.py']
