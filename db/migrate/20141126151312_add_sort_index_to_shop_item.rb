class AddSortIndexToShopItem < ActiveRecord::Migration
  def change
    add_column :shop_items, :sort_index, :integer
  end
end
