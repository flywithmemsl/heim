class AddLinkToGalleryPost < ActiveRecord::Migration
  def change
    add_column :gallery_posts, :link, :string
  end
end
