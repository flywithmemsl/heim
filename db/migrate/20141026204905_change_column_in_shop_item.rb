class ChangeColumnInShopItem < ActiveRecord::Migration
  def change
    rename_column :shop_items, :type, :category
  end
end
