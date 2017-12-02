require 'rails_helper'

describe Tag do
  it { should belong_to :project}
  it { should validate_presence_of :tag }
  it { should validate_presence_of :project_id }
end
