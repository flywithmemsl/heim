ThinkingSphinx::Index.define :shop_item, :with => :active_record, :delta => true do

  indexes name
  indexes category


  has sort_index, :sortable => true

end