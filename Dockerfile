FROM python:3.6-alpine
ENV PYTHONUNBUFFERED 1

WORKDIR /app
COPY ./ ./
RUN pip install pipenv
RUN pipenv sync
RUN pipenv run ./manage.py collectstatic --noinput

EXPOSE 8123
STOPSIGNAL SIGTERM
CMD ["pipenv","run","gunicorn", "-w", "8", "-b", "0.0.0.0:8123", "demo.wsgi"]