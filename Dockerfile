FROM python:3.9-bullseye

WORKDIR /africanlaw
RUN pip install --upgrade pip
RUN pip install virtualenv
RUN virtualenv venv
#ENV PATH="/africanlaw/venv/bin:$PATH"

COPY . .
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "africanlaw.wsgi"]
