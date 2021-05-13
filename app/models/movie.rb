class Movie < ApplicationRecord
  has_many :bookmarks
  #has_many :lists, through: :bookmarks
  validates_uniqueness_of :title
  validates :title, presence: true
  validates :overview, presence: true
end

# has a comment
# comment cannot be shorter than 6 characters
# belongs to a movie
# belongs to an list
# movie cannot be blank
# list cannot be blank
# is unique for a given movie/list couple
