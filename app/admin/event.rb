ActiveAdmin.register Event do

  index do
    selectable_column
    column :name
    column :date
    actions


  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :date, :description, :fb_link, :vk_link, :illustration
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
      f.input :date
      f.input :description, as: :wysihtml5, commands: [ :bold, :italic, :underline, :link ], blocks: [:p]
      f.input :fb_link
      f.input :vk_link
      f.input :illustration
    end

    f.actions
  end



end
