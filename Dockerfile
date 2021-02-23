FROM python:3-slim

WORKDIR /train

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app.py app.py

EXPOSE 8000

CMD ["python", "app.py" ]