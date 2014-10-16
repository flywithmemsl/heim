class AddVideoLinkToBlogPost < ActiveRecord::Migration
  def change
    add_column :blog_posts, :video_link, :string
  end
end
