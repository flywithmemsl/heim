class ChangeColumnType < ActiveRecord::Migration
  def change
    change_column :blog_posts, :description,  :string, limit: 4000
    change_column :blog_posts, :introtext,  :string, limit: 4000
  end
end
