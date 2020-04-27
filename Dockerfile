FROM frolvlad/alpine-python-machinelearning:latest
RUN pip install --upgrade pip
WORKDIR /app
COPY . /app
EXPOSE 5000
ENTRYPOINT ['python']
CMD ['app.py']
