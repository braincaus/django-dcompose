FROM python:alpine
LABEL manteiner = "Efrain Rodriguez - Demo Django with Composer efrain@romesistemas.mx"

COPY . /src
WORKDIR /src

RUN pip install --upgrade pip && pip install -r requirements.txt

CMD python manage.py runserver 0.0.0.0:8000

EXPOSE 8000