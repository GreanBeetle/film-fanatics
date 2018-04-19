class Film < ActiveRecord::Base
  belongs_to :year
  validates :title, :presence => true

  scope :alphabetized_films, -> {order(title: :asc)}
end
