Rails.application.routes.draw do
  resources :line_items, only: [:create, :update, :destroy]
  resources :carts
  resources :products
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# Ici on définit les différentes routes, chaque route est associé à une action spécifique d'un controller

# Par exemple, la ligne 'ressources :products' génère 8 routes correspondant aux actions CRUD :
    # -> Index - GET /products (affiche une liste de tous les articles)
    # -> Create - POST /prodcuts (créer un nouveau produit)
    # -> New - GET /products/new (affiche le formulaire pour créer un nouveau produit)
    # -> Edit - GET/products/:id/edit (affiche le formulaire pour éditer un produit existant)
    # -> Show - GET/products/:id (affiche un article spécifique)
    # -> Update - PUT/products/:id (met à jour un article existant)
    # -> Update - PATCH/products/:id (met à jour un article existant mais seulement certaines parties)
    # -> Destroy - DELETE/products/:id (supprime un article existant)