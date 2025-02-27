class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
  # validates :poster_url, presence: true
  validate :cannot_delete_if_bookmarked
  private
  def cannot_delete_if_bookmarked
    if bookmarks.any?
      errors.add(:base, 'cannot delete a movie if it is referenced in at least one bookmark.')
    end
  end
end
