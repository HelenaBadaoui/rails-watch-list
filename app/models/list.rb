class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, presence: true
  validates_uniqueness_of :name
end

#  name cannot be blank (FAILED - 3)
#   name is unique (FAILED - 4)
#   has many bookmarks (FAILED - 5)
#   has many movies (FAILED - 6)
#   should destroy child saved movies when destroying self (FAILED - 7)
