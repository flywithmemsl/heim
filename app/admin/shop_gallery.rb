ActiveAdmin.register ShopGallery do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :gallery
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


  form do |f|
    f.inputs do
      f.input :gallery, as: :wysihtml5, commands: [ :image, :video ], blocks: :all
    end

    f.actions
  end

end
