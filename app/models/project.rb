class Project < ApplicationRecord
  has_many :tags
  validates :project, :name, :presence => true
  validates :project, :date, :presence => true
  validates :project, :description, :presence => true
  validates :project, :image, :presence => true
end
