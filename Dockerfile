
FROM frolvlad/alpine-python-machinelearning
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
CMD ["python3", "app1.py"]