class AddTaglistToBlogPost < ActiveRecord::Migration
  def change
    add_column :blog_posts, :taglist, :string
  end
end
