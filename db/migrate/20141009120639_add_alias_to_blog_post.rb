class AddAliasToBlogPost < ActiveRecord::Migration
  def change
    add_column :blog_posts, :alias, :string
  end
end
