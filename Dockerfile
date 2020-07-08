FROM python:3.7.3-stretch 

#Working Directory 
WORKDIR /app

#Copy source code to working directory 
COPY . app.py /app/

#INSTALL PACKAGES FROM REQUIREMENTS.TXT
#HADOLINT IGNORE=DL3013

RUN pip install --upgrade pip==20.1.1 &&\
    pip install --trusted-host pypi.python.org -r requirements.txt