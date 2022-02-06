FROM python:3.10-alpine
WORKDIR /app
COPY . .
RUN pip install -r requirements
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
