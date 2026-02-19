FROM python:3.14

WORKDIR /usr/app

COPY . .
RUN pip install --no-cache-dir -r requirements.txt \
 && pip install uwsgi

CMD ["uwsgi", "--ini", "/usr/app/uwsgi.ini"]