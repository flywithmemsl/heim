class AddDeltaToShopItem < ActiveRecord::Migration
  def change
    add_column :shop_items, :delta, :boolean, :default => true,
    :null => false
  end
end
