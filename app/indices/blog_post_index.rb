ThinkingSphinx::Index.define :blog_post, :with => :active_record, :delta => true do
  indexes title, :sortable => true
  indexes description
  indexes introtext
  indexes text
  indexes taglist

  has date, :sortable => true

end