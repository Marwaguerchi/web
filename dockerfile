# Utiliser une image Python de base
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de l'application dans le conteneur
COPY . .

# Installer les dépendances
RUN pip install -r requirements.txt

# Exposer le port 5000 pour Flask
EXPOSE 5000

# Définir la commande pour lancer l'application Flask
CMD ["python", "app.py"]
