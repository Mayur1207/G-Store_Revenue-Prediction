FROM continuumio/anaconda3
COPY . /usr/app
WORKDIR /usr/app/
RUN pip install -r requirements.txt
CMD python D:\cdac_kharghar_class\project\google analytics customer revenue prediction\project_updated\G-Store_Revenue-Prediction\app1.py



