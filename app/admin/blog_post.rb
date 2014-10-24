ActiveAdmin.register BlogPost do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :alias, :gallery, :video_link, :description, :introtext, :text, :date, :smallpic, :illustration, :category_id, :event, :event_city_id, :taglist
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
      f.input :title
      f.input :alias
      f.input :gallery
      f.input :video_link
      f.input :description
      f.input :introtext
      f.input :text, as: :wysihtml5, commands: :all , blocks: :all
      f.input :date
      f.input :smallpic
      f.input :illustration
      f.input :category_id
      f.input :event
      f.input :event_city_id
      f.input :taglist
    end

    f.actions
  end




end
