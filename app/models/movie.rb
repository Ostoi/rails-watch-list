class Movie < ApplicationRecord
  has_many :bookmarks
  # has_many :lists, through: :bookmarks, dependent: :restrict_with_exception
  # has_many :lists, through: :bookmarks, dependent: :restrict_with_error

  validates :overview, presence: true
  validates :title, presence: true
  validates :title, uniqueness: true
end
