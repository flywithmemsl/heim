class AddDeltaToBlogPost < ActiveRecord::Migration
  def change
    add_column :blog_posts, :delta, :boolean, :default => true, :null => false
  end
end
