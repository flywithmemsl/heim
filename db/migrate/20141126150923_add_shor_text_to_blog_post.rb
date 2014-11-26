class AddShorTextToBlogPost < ActiveRecord::Migration
  def change
    add_column :blog_posts, :short_text, :string
  end
end
