FROM python:latest
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app
COPY . .
RUN export UBER_CLIENT_ID="{CQXrtZ5QPNuw9QsJywqI0R-sAQbIKgAy}"&&export UBER_CLIENT_SECRET="{tYJQzKeRQtD94BXzUrFo-7UrUsHANO7gUjI}"
RUN pip install -r requirements.txt
EXPOSE 7000
CMD [ "python", "app.py" ]
