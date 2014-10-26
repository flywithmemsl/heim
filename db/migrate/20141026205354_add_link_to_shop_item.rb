class AddLinkToShopItem < ActiveRecord::Migration
  def change
    add_column :shop_items, :link, :string
  end
end
