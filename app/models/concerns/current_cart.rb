#Cette concern sert à ajouter des produits au panier même quand on est pas connecté
#Une fois connecté, on a le panier avec les produits ajouté aux préalable dedans

module CurrentCart

    private

    def set_cart
        @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
        session[:cart_id] = @cart.id
    end
    
end