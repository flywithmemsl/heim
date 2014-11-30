class AddAliasToShopCAtegory < ActiveRecord::Migration
  def change
    add_column :shop_categories, :alias, :string
  end
end
