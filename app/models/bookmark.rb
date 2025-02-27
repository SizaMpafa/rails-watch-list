class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { is: 6 }
  validates :movie_id, uniqueness: true
  validates :list_id, uniqueness: true
end
