@echo off

REM Définir le chemin du fichier HTML à modifier
set "fichier_txt=C:\Users\VotreNomDeUser\DossiersDeDev\absurdDailyPush\fichier.txt"

REM Générer aléatoirement le nouveau contenu HTML
set /a random_number=%RANDOM% %% 1000
set "nouveau_contenu=Contenu aléatoire: %random_number%"

REM Écrire le nouveau contenu dans le fichier HTML
echo %nouveau_contenu% > %fichier_txt%

REM Accéder au répertoire de votre projet
cd "C:\Users\VotreNomDeUser\DossiersDeDev\absurdDailyPush"

REM Ajouter tous les fichiers modifiés
git add .

REM Commit avec un message
git commit -m "Commit quotidien"

REM Push vers le dépôt distant (par exemple, origin et branche main)
git push origin main