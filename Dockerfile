FROM continuumio/anaconda3
COPY . /usr/app
WORKDIR /usr/app/
RUN pip install -r requirements.txt
CMD python app1.py



