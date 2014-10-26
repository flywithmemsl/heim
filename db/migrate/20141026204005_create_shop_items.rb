class CreateShopItems < ActiveRecord::Migration
  def change
    create_table :shop_items do |t|
      t.string :name
      t.string :type
      t.string :price
      t.string :image

      t.timestamps
    end
  end
end
