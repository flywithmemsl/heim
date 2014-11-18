class AddIndexPageToPromoBlock < ActiveRecord::Migration
  def change
    add_reference :promo_blocks, :IndexPage, index: true
  end
end
