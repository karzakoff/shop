La database sur rails marche notamment grâce à deux commandes utiles : 
    -> rails db:migrate
    -> rails db:seed

Dans le dossier 'migrate', on peut trouver chaque migration que l'on a fait auparavant. Cela ressemble plus ou moins à des commits. 

Dans le fichier 'seed.rb', il y a toutes les infos sur les produits du site. La commande 'rails db:seed' va envoyer toutes ses données à la database.

Le fichier 'schema.rb' est en quelque sorte la structure de la database, c'est la on l'on voit comment sont créer les tables et qu'est ce qu'elles contiennent.