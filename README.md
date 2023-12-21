# Rapport SAE51

## Objectifs

Pour ce projet SAE51 de Mise en place et interrogation de SGBD, nous nous sommes concentrés sur la réalisation des scripts attendu et sur le coté "automatisation", centre de la SAE
Nous avons planifié en amont la base SQL et les tables qui nous seront nécessaires, ainsi que les scripts nécessaires, leurs ordres d'executions et d'importance pour la réalisation de cette SAE.

Le projet est entierement disponible sur un répertoire "SAE51" sur Github, où tout les scripts et fichiers csv peuvent être télechargé ou cloner sur une machine Debian.

Nous avons donc :
5 fichiers CSV, chacun contenant les données qui seront stockées dans une table MySQL qui lui correspondra.
1 Script "Script_Maitre.sh" qui se charge de construire notre conteneur via le Dockerfile et de le lancer.
1 Dockerfile qui s'occupe intégralement de la construction de notre conteneur MySQL et de l'execution des scripts qui interagissont avec MySQL
2 Script "DB_create", un en .sql qui crée la DATABASE et les Tables, et 1 en .sh qui se connecte à MySQL pour executer le script en .sql
2 Script "DB_fillup", un en .sql qui remplis les Tables avec les fichiers csv correspondant, et 1 en .sh qui se connecte à MySQL pour éxecuter le script en .sql
2 Script "DB_request", un en .sql qui interroge la DATABASE, et 1 en .sh qui se connecte à MySQL pour éxecuter le script en .sql

Tout est fait automatiquement via l'éxecution du script maitre avec la commande :
sudo ./Script_Maitre.sh
à l'exeption du script DB_request.sh qui doit être éxecuté à l'interrieur du conteneur.


### Objectifs atteints
- Mise en place d'un conteneur MySQL
- Création de plusieurs Script de configurations pour MySQL
- Création d'un script maître qui automatise toute la création du conteneur
- Création d'un fichier de requête SQL
- Utilisation d'un environnement de dévelopement Github

### OBjectifs non atteints
- Lancement automatique du script de requete
- Script de requête peu abouti par rapports aux ambitions initiales
(nous voulions créer un script où nous pouvons choisir parmis plusieurs requêtes)
- Conteneur pour automatiser la création d'un DBML

## Difficultés Rencontrées

Par manque d'aisance avec Docker, pouvoir faire fonctionner simultanément notre conteneur MySQL et un conteneur pour le DBML nous à parut bien trop complexte, et par un manque de temps et de documentation de notre par, le Script de requête n'est pas à la hauteur de ce qui
aurait été souhaité.
Aussi, par soucis de clareté, malgrè l'outil github, nous avons du effectuer nos modifications sur les scripts uniquement sur une seule machine, car travailler en simultané et, entre guillemets chacun de son coté pour corriger les erreurs
s'avère bien moins pratique que simplement collaborer en même temps, à deux sur une seule interface pour identifiers les bugs et erreures de syntaxes.

## Organisation

Comme présenté dans le point étape, et à la présentation au début, nous avons travaillé en groupe sur chacune des étapes du projets, en quelque sorte nous étions à deux sur une seule et même tâche.
Cela nous à permis d'avancer rapidement pour nous concentrer sur la partie qui nous a causé le plus de problèmes, c'est à dire les scripts.
à la fin de ce projet, nous avons pu constater que nous sommes maintenant plus à l'aise avec la partie dévellopement de scripts d'automatisations, mais aussi que les connaissances acquise en language SQL nous a été utile pour ne pas perdre trop de temps sur la partie SQL.
Aussi maintenant nous sommes également plus familiers à travailler avec Docker, et surtout en organisation avec Github.

