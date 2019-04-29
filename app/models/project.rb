class Project < ApplicationRecord
  acts_as_taggable_on :labels
  acts_as_taggable

  acts_as_ordered_taggable_on :categories, :technologies
end
