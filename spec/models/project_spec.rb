require 'rails_helper'

require 'rails_helper'

describe Project do
  it { should have_many :tags}
  it { should validate_presence_of :name }
  it { should validate_presence_of :date }
  it { should validate_presence_of :description }
  it { should validate_presence_of :image }
end
