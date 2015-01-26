class CreateMetaTags < ActiveRecord::Migration
  def change
    create_table :meta_tags do |t|
      t.string :url
      t.string :title
      t.string :description
      t.string :keywords
      t.text :text

      t.timestamps
    end
  end
end
