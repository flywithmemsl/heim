class AddIndexPageToPromoBlock2 < ActiveRecord::Migration
  def change
    add_reference :promo_blocks, :index_page, index: true
  end
end
