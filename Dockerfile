
FROM frolvlad/alpine-python-machinelearning
WORKDIR /app
COPY . /app

RUN apt update -y

RUN apt-get update && pip install -r requirements.txt
CMD ["python3", "app1.py"]