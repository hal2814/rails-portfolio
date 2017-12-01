require 'rails_helper'

RSpec.describe "tags/show", type: :view do
  before(:each) do
    @tag = assign(:tag, Tag.create!(
      :tag => "Tag",
      :project_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tag/)
    expect(rendered).to match(/2/)
  end
end
