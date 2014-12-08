class AddSaleToShopItem < ActiveRecord::Migration
  def change
    add_column :shop_items, :sale, :boolean
  end
end
