class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, presence: true
  validates_uniqueness_of :name
end

# has a name
# name cannot be blank
# name is unique
# has many bookmarks
# has many movies
# should destroy child saved movies when destroying self
