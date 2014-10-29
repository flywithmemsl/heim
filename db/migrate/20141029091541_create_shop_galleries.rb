class CreateShopGalleries < ActiveRecord::Migration
  def change
    create_table :shop_galleries do |t|
      t.text :gallery

      t.timestamps
    end
  end
end
