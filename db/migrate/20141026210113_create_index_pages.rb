class CreateIndexPages < ActiveRecord::Migration
  def change
    create_table :index_pages do |t|
      t.string :header
      t.string :slogan
      t.text :text1
      t.text :text2
      t.text :text3
      t.text :text4

      t.timestamps
    end
  end
end
