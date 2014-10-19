class AddEventToBlogPost < ActiveRecord::Migration
  def change
    add_column :blog_posts, :event, :boolean
  end
end
