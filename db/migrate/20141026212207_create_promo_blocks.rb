class CreatePromoBlocks < ActiveRecord::Migration
  def change
    create_table :promo_blocks do |t|
      t.text :block_html

      t.timestamps
    end
  end
end
