## Projet 7 : Groupomania : Version Locale - OpenClassrooms - Développeur Web

### Comment lancer le projet :
Vérifiez que vos ports 5500 ainsi que 3000 ne sont pas occupés. Le port 3000 n'est pas essentiel, en revanche si le port 5500 n'est pas disponible le serveur ne pourra pas recevoir les requêtes du client.

##### Côté serveur
1. Ouvrez un premier terminal et entrez les commmandes suivantes
2. cd server
3. npm i
4. En utilisant phpMyAdmin (par exemple) créez une nouvelle base de données (mySql) vide
5. Récupérez les informations de la BDD notamment le nom d'utilisateur, le mot de passe utilisateur, le nom de la BDD
6. Modifiez le fichier config.json situé dans ThibautOrcel_7_23082021/server/config/config.json
7. Remplacez your_db_username_here par le nom d'utilisateur
8. Remplacez your_db_password_here par le mot de passe de l'utilisateur
9. Remplacez your_db_name_here par le nom de votre base de données
10. Dans le terminal entrez "npm start"
11. Le serveur va créer automatiquement les tables dans votre base de données
12. Passez à l'installation du côté client

##### Côté client
1. Ouvrez un deuxième terminal et entrez les commandes suivantes :
2. cd client
3. npm i
4. npm start

##### Côté web
Vous venez tout juste de créer votre base de données. L'application ne possède donc pas encore d'utilisateurs ou de publications.
Il ne vous reste donc plus qu'à vous rendre sur la page de création de compte puis de vous connecter. Vous pourrez alors commencer à publier du contenu ou bien mettre à jour les informations présentes sur votre page personnelle.

### Comment attribuer les droits d'admin :
1. Créez votre compte depuis l'application ( http://localhost:3000/register )
2. Ouvrez votre base de données avec phpMyAdmin ou Workbench (par exemple)
3. Dans la table "users" modifiez la colonne "isAdmin" pour l'utilisateur que vous désirez passer administrateur
4. Dans la colonne "isAdmin" le 0 signifie : utilisateur normal ; le 1 signifie : utilisateur administrateur
5. Se déconnecter et se reconnecter à l'application pour que l'appli prenne en compte ces nouvelles modifications (si elles ont été effectuées sur le compte actuellement connecté)

<hr/>

Ce repo est la version locale du réseau social Groupomania. Afin de retrouver la version en ligne, ainsi que mes repositories initiaux vous pouvez vous rendre sur les repo suivants : 

backend : https://github.com/Tookai/heroku_backend

frontend : https://github.com/Tookai/heroku_frontend

Afin de retrouver le site dans sa version en ligne, commencer par réveillez le côté serveur sur heroku : 

https://groupomania-social.herokuapp.com/

et ensuite réveillez le côté client sur heroku : 

https://groupomania-frontend.herokuapp.com/


Le premier chargement de la page sera long si le site n'a pas été utililsé récemment car j'utilise les services gratuits de heroku.
