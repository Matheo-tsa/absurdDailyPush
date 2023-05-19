#!/bin/bash

# Accéder au répertoire de votre projet
cd /chemin/vers/votre/projet

# Ajouter tous les fichiers modifiés
git add .

# Commit avec un message
git commit -m "Commit quotidien"

# Push vers le dépôt distant (par exemple, origin et branche master)
git push origin master
