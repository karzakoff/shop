Les controllers sont implémenter automatiquement avec la commande suivante : 
    > rails generate 'nom du controller'

Ils servent à "controller" les données en provenance des models et donc faire la liaison avec les fichiers html.erb

    -> L'utilisateur fait une requete sur le site
    -> Les models envoie les données 
    -> Les controllers les traites
    -> En fonction des controllers, les fichiers html renvoie un display
    -> Le tout est renvoyé à l'utilisateur en étant affiché sur le site  

Il faut savoir aussi que les controllers font des requête SQL à la database pour aller chercher les infos sur les produits par exemple.     