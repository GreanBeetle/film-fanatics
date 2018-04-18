class Film < ActiveRecord::Base
  belongs_to :year
  validates :title, :presence => true
end
