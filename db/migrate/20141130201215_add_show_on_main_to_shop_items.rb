class AddShowOnMainToShopItems < ActiveRecord::Migration
  def change
    add_column :shop_items, :show_on_main, :boolean
  end
end
