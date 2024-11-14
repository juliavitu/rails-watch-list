class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 6 }
  validates_uniqueness_of :movie_id, :scope => [:movie_id, :list_id]
end
