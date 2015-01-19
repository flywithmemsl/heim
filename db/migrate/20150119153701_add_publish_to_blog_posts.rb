class AddPublishToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :publish, :boolean
  end
end
