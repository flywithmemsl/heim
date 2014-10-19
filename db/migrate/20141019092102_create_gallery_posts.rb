class CreateGalleryPosts < ActiveRecord::Migration
  def change
    create_table :gallery_posts do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
