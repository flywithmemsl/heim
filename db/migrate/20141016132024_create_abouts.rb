class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :illustration
      t.text :text
      t.text :left_colum_text

      t.timestamps
    end
  end
end
