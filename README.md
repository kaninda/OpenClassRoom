# OpenClassRoom_TP3
1. Installer Vagrant et configurer vagrant dans le patch

2. Installer Ansible et configurer ansible dans le patch

3. Aller dans le repertoire ou se trouve le fichier VagrantFile
/*
Il est a noter que le ficher vagrantfile est responsable des actions suivantes:
    - Configuration de la vb
    - installation de "generic/ubuntu2004" dans la vb
    - forwarding du port guest 8080 de la vb vers le port 80
    - Installation de docker dans la vm via le provision ansible
*/
4. Lancer vagrant  : "Vagrant up"

5. Entrer dans la vb : "vagrant ssh"

6. Entrer dans le dossier de configuratin du docker "cd /vagrant_data"

/*
Il est à noter ici que le fichier Dockerfile est responsable du lancement du docker
Voici les actions qui seront executées :
 - Installation du server nginx
 - Installation du server Openssh-server
 - Installation de net-tools
 - ajout d'un utilisateur kani
 - exposition des port 22 et 80 
*/
7. Construction de l'image docker : "docker build -t mynginximage ."

8. Lancement du docker : "docker run -p 8080:80 -p 222:22 -t myngniximage"

9. Recuperation de l'adresse ip du container :
    - docker exec -it (idContainer) /bin/bash
    - ifconfig
10. Tester le ssh à partir de la vb : ssh kani@(adress_container)
11. Tester le serveur nginx a partir de la machine hote : curl "http://localhost:80"







