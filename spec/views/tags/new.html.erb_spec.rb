require 'rails_helper'

RSpec.describe "tags/new", type: :view do
  before(:each) do
    assign(:tag, Tag.new(
      :tag => "MyString",
      :project_id => 1
    ))
  end

  it "renders new tag form" do
    render

    assert_select "form[action=?][method=?]", tags_path, "post" do

      assert_select "input[name=?]", "tag[tag]"

      assert_select "input[name=?]", "tag[project_id]"
    end
  end
end
