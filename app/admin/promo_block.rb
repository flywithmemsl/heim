ActiveAdmin.register PromoBlock do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :block_html, :index_page_id
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
      f.input :block_html, as: :wysihtml5, commands: [ :image, :video, :source ]

      f.input :index_page
    end

    f.actions
  end


end
