class ShopController < ApplicationController
  def index
    @gallery = ShopGallery.first.gallery
  end
end
