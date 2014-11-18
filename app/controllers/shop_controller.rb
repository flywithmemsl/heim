class ShopController < ApplicationController
  def index
    @gallery = ShopGallery.first.try :gallery
  end
end
