FROM python:latest
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app
COPY . .
RUN export UBER_CLIENT_ID="{client id}"&&export UBER_CLIENT_SECRET="{client id}"
RUN pip install -r requirements.txt
EXPOSE 7000
CMD [ "python", "app.py" ]
