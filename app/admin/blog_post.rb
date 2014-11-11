ActiveAdmin.register BlogPost do

  index do
    selectable_column
    column :title
    column :category_id
    column :event
    column :date
    actions
  end

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
      f.input :category, :default => "1"

      f.input :event
      f.input :event_city

      f.input :title
      f.input :alias

      f.input :smallpic
      f.input :illustration

      f.input :description, as: :wysihtml5, commands: [ :bold, :italic, :underline, :link ], blocks: [:p]
      f.input :introtext, as: :wysihtml5, commands: [ :bold, :italic, :underline, :link ], blocks: [:p]
      f.input :text, as: :wysihtml5, commands: :all , blocks: [:h3, :h4, :h5, :h6, :p]
      f.input :gallery, as: :wysihtml5, commands: [ :image, :video, :source ], blocks: :all
      f.input :video_link

      f.input :date

      f.input :taglist
    end

    f.actions
  end




end
