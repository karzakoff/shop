module ProductsHelper

  def product_author(product)
    user = product.user
    user ? user.name : "Unknow user"
  end

  def can_edit_product?(product)
    current_user && current_user.id == product.user_id
  end

  def can_delete_product?(product)
    can_edit_product?(product)
  end
end
