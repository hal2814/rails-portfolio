require 'rails_helper'

RSpec.describe "tags/index", type: :view do
  before(:each) do
    assign(:tags, [
      Tag.create!(
        :tag => "Tag",
        :project_id => 2
      ),
      Tag.create!(
        :tag => "Tag",
        :project_id => 2
      )
    ])
  end

  it "renders a list of tags" do
    render
    assert_select "tr>td", :text => "Tag".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
