class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, uniqueness: { scope: :list_id, message: 'has alredy bookmarked' }
  validates :comment, length: { minimum: 6 }
end
