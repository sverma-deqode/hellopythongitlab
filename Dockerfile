FROM python:3-alpine
WORKDIR /usr/src/app
EXPOSE 8000
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY server.py .
CMD ["python3", "./server.py"]
