class AddGalleryToBlogPost < ActiveRecord::Migration
  def change
    add_column :blog_posts, :gallery, :text
  end
end
