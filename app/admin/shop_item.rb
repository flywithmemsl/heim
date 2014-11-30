ActiveAdmin.register ShopItem do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :category, :price, :image, :link, :sort_index, :shop_category_id, :show_on_main
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form do |f|
    f.inputs do
      f.input :name

      f.input :category
      f.input :price

      f.input :image
      f.input :link
      f.input :shop_category
      f.input :sort_index
      f.input :show_on_main

    end

    f.actions
  end

end
