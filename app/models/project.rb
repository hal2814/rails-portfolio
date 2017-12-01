class Project < ApplicationRecord
  has_many :tags
  validates :name, :presence => true
  validates :date, :presence => true
  validates :description, :presence => true
  validates :image, :presence => true
end
