FROM python:3.10-slim

WORKDIR /Users/dmudgil/projects/spikes/flask-gunicorn

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "run:app"]

