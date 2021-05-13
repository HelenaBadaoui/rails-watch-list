class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :movie, :scope => [:list]
end

# has a title and an overview
# title is unique
# title cannot be blank
# overview cannot be blank
# has many bookmarks
# should not be able to destroy self if has bookmarks children
