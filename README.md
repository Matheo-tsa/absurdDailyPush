# Projet absurde
Ce projet a pour but de rendre remplir le tableau des contributions Github.

## Sur Windows

### Modification automatique du fichier.txt pour nourrir le commit

Dans le dailyPush.exemple.bat on associe le chemin du _fichier.txt_ à fichier_txt

`set "fichier_txt=C:\Users\VotreNomDeUser\DossiersDeDev\absurdDailyPush\fichier.txt"`

Puis on associe un chiffre généré aléatoirement à nouveau_contenu via `%RANDOM% %% 1000`

```
set /a random_number=%RANDOM% %% 1000
set "nouveau_contenu=Contenu aléatoire: %random_number%"
```

Enfin on écrit la nouvelle valeur dans le _fichier.txt_

`echo %nouveau_contenu% > %fichier_txt%`

### Ajout des fichiers, commit et push

On se déplace vers le dossier du projet 

`cd "C:\Users\VotreNomDeUser\DossiersDeDev\absurdDailyPush"`

Puis on effectue l'ajout, le commit et le push classiquement (pensez à modifier le nom de votre branch si ce n'est pas main)

```
git add .
git commit -m "Commit quotidien"
git push origin main
```

Pour plus de fantaisie, vous pouvez ajouter au message de commit la valeur du random_number précédemment générée.


#### Test de la commande .bat

- Ouvrez votre terminal
- Déplacez vous a l'endroit où se trouve votre fichier _.bat_
- entrez la commande suivante : ` .\dailyPush.exemple.bat `
- Vérifiez que votre _fichier.txt_ à bien été mis à jour
- Vérifiez sur GitHub que votre répo à bien été mis à jour

### Utilisation de Planificateur de taches Windows

- **Créez** une tache
- Donner un **nom**
- Déclencheur : Définissez la **fréquence** (ici, tous les jours)
- Actions : **Démarrer un programme**, pointer sur votre fichier _.bat_
- Afin de ne pas attendre que l'heure définie pour la tache arrive, cliquez sur la tache, puis sur **executer**