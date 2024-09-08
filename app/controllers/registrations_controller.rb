#C'est à l'intérieur de ce controlleur que l'on utilise Devise, qui nous permet de faciliter l'authentification
class RegistrationsController < Devise::RegistrationsController

    def create
        super # permet de rappeler le code de la classe parente sans le réecrire (ici la classe create)
    end 

    def update
        super
    end

    private # encapsule les détails d'implémentation d'une classe, et protège les données internes de la classe

    def sign_up_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end 

    def account_update_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
    end

end

# params = contient les paramètres de la requete HTTP (disponible dans les controlleurs de Ru)

# require = spécifie le nom du paramètre qui doit être présent dans la requete (ici c'est user)

# permit = spécifie les éléments autorisés à l'intérieur du paramètre spécifié par require

