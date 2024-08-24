# Utiliser une image de base avec Python
FROM python:3.8-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers requirements.txt et app.py dans le conteneur
COPY requirements.txt requirements.txt
COPY app.py app.py

# Installer les dépendances de Python
RUN pip install -r requirements.txt

# Exposer le port 5000
EXPOSE 5000

# Démarrer l'application Flask
CMD ["python", "app.py"]
