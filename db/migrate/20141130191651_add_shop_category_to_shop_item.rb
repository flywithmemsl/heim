class AddShopCategoryToShopItem < ActiveRecord::Migration
  def change
    add_reference :shop_items, :shop_category, index: true
  end
end
