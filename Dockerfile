FROM python:latest
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app
COPY . .
RUN export UBER_CLIENT_ID="{your client id}"&&export UBER_CLIENT_SECRET="{your client id}"
RUN pip install -r requirements.txt
EXPOSE 7000
CMD [ "python", "app.py" ]
