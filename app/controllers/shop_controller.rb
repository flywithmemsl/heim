class ShopController < ApplicationController

  def index
    @gallery = ShopGallery.first.try :gallery
    category = params[:category]

    @items = ''
    if category == "sale"
      @items = ShopItem.where(sale: :true).try(:order, sort_index: :desc)
    end

    if category == nil

      @all = true
      @publications = ShopCategory.find_by(alias: 'publications')
      @courses = ShopCategory.find_by(alias: 'courses')
      @items = @publications.try(:shop_items).try(:order, sort_index: :desc) || ShopItem.all.try(:order, sort_index: :desc)
      @items2 = @courses.try(:shop_items).try(:order, sort_index: :desc) || ShopItem.all.try(:order, sort_index: :desc)


    end

    if @items == ''
      @category = ShopCategory.find_by(alias: category)
      @items = @category.try(:shop_items).try(:order, sort_index: :desc) || ShopItem.all.try(:order, sort_index: :desc)
    end

    # @items = ShopItem.all.order(sort_index: :desc)
    # if @category.name = "Sale"
    #
    # else



  end

  def show
    # @category = ShopCategory.find_by(alias: params[:category])

  end

end
