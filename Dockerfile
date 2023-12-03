FROM python:3-alpine3.10

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN python3 -m pip install --upgrade pip3
RUN pip3 install Flask
RUN pip3 install opencv-python
RUN pip3 install tensorflow

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]