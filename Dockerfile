FROM python:3
RUN pip install django==3.

COPY . .

RUN python manage.py migrate

CMD ["python","manage.py","runserver"]
