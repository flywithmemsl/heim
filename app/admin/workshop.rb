ActiveAdmin.register Workshop do

  index do
    selectable_column
    column :name
    column :date
    column :city
    column :price
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  permit_params :name, :date, :description, :fb_link, :vk_link, :illustration, :city, :place,
  :place_link, :buy_link, :price, :masters, :masters_link


  form do |f|
    f.inputs do
      f.input :name
      f.input :date
      f.input :description, as: :wysihtml5, commands: [ :bold, :italic, :underline, :link ], blocks: [:p]
      f.input :city
      f.input :place
      f.input :place_link
      f.input :buy_link
      f.input :price
      f.input :masters
      f.input :masters_link
      f.input :fb_link
      f.input :vk_link
      f.input :illustration
    end

    f.actions
  end

end
