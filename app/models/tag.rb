class Tag < ApplicationRecord
  belongs_to :project
  validates :tag, :presence => true
  validates :project_id, :presence => true
end
