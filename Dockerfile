FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /testjob
COPY requirements.txt /testjob/
RUN pip install -r requirements.txt
COPY . /testjob
EXPOSE 9000
CMD [ "python", "manage.py", "runserver", "0.0.0.0:9000" ]






