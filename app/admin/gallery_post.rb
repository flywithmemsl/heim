ActiveAdmin.register GalleryPost do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :description, :image, :link
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
      f.input :description, as: :wysihtml5, commands: [ :bold, :italic, :underline, :link ], blocks: [:p]
      f.input :image
      f.input :link
    end

    f.actions
  end

end
