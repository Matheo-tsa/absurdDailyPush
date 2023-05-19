@echo off

REM Accéder au répertoire de votre projet
cd "C:\Users\VotreNomDeUser\DossiersDeDev\absurdDailyPush"

REM Ajouter tous les fichiers modifiés
git add .

REM Commit avec un message
git commit -m "Commit quotidien"

REM Push vers le dépôt distant (par exemple, origin et branche master)
git push origin main