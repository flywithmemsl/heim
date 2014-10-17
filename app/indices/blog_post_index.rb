ThinkingSphinx::Index.define :blog_post, :with => :active_record do
  indexes title, :sortable => true
  indexes description
  indexes introtext
  indexes text

  has date, :sortable => true

end