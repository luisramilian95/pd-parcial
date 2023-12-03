FROM python:3-alpine3.10

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN python3 -m pip install --upgrade pip3
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]