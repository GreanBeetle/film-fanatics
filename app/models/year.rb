class Year < ActiveRecord::Base
  has_many :films
  validates :year, :presence => true
end
