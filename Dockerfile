FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install flask scikit-learn pandas numpy matplotlib

RUN python model.py

EXPOSE 5000

CMD ["python", "app.py"]