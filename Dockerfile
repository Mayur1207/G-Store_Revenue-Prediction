FROM frolvlad/alpine-python-machinelearning
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
ENTRYPOINT [ "python" ]
CMD ["app1.py"]