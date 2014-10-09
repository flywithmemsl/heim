class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :description
      t.text :introtext
      t.text :text
      t.date :date
      t.string :smallpic
      t.string :illustration
      t.references :category

      t.timestamps
    end
  end
end
