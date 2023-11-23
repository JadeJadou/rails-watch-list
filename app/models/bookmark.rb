class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 6 }
  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates_uniqueness_of :movie_id, :scope => [:list]
end
