FROM python:3.9-slim-buster

WORKDIR /flask-docker

RUN python3 -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD ["python" , "-m", "flask", "--app", "Loan_app.py", "run", "--host=0.0.0.0"]
#docker build -t loan_app .

#docker run -p 8000:5000 loan_app

#How to Push to Dockerhub
#1. Build the Image again with sayedruhuzzaman/loan_app
#2 . Then Push using docker push sayedruhuzzaman/loan_app
