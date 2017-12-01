class Tag < ApplicationRecord
  has_many :tags
  validates :tag, :presence => true
  validates :project_id, :presence => true
  
end
