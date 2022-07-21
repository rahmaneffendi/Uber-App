FROM python:latest
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 7000
CMD [ "python", "app.py" ]
