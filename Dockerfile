# Obraz bazowy z Pythonem
FROM python:3.12-slim

# Ustawiamy katalog roboczy w kontenerze
WORKDIR /app

# Kopiujemy plik aplikacji do kontenera
COPY app.py /app/app.py

# Instalujemy Flask (framework do naszego web serwisu)
RUN pip install --no-cache-dir flask

# Aplikacja nasłuchuje na porcie 5000
EXPOSE 5000

# Komenda startowa kontenera
CMD ["python", "app.py"]
