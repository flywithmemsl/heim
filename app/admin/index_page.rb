ActiveAdmin.register IndexPage do

  index do
    selectable_column
    column :id
    column :name
    column :alias
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

  permit_params :header, :alias, :slogan, :text1, :text2, :text3, :text4, :text5, :header1, :header2, :header3, :name, :small_picture, :left_picture, :right_picture, :left_link, :left_link_text, :right_block_tittle, :right_block_text, :bottom_picture, :fullscreenpic, :right_block_link, :bottom_link, :bottom_text



  form do |f|
    f.inputs do


      f.input :name
      f.input :alias

      f.input :small_picture

      f.input :fullscreenpic

      f.input :header

      f.input :header1
      f.input :header2
      f.input :header3
      f.input :text1
      f.input :text2

      f.input :text3
      f.input :text4

      f.input :text5







      f.input :left_link
      f.input :left_link_text
      f.input :left_picture
      f.input :right_block_tittle
      f.input :right_block_text
      f.input :right_picture
      f.input :right_block_link

      f.input :bottom_text
      f.input :bottom_picture
      f.input :bottom_link

    end

    f.actions
  end



end
