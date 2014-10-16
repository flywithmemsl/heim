class ChangeBlogPostColumnType < ActiveRecord::Migration
  def change
    change_column :blog_posts, :description,  :text
    change_column :blog_posts, :introtext,  :text
  end
end
