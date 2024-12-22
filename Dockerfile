FROM python:3.10-slim-buster

WORKDIR /test_dir

COPY requirements.txt .

RUN apt-get update &&\
  apt-get install nano -y  &&\
  pip install -r requirements.txt

COPY . .

CMD ["python","train.py"]