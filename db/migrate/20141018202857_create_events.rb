class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :alias
      t.string :name
      t.date :date
      t.string :description
      t.string :fb_link
      t.string :vk_link

      t.timestamps
    end
  end
end
