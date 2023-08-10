class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :bookmarks #mylist.bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy #mylist.movies
end
