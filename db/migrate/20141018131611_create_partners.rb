class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :link
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
