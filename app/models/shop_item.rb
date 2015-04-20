class ShopItem < ActiveRecord::Base
  belongs_to :shop_category
  mount_uploader :image, ShopUploader


end
