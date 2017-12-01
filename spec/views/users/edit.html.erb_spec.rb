require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :password_hash => "MyString",
      :password_salt => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[password_hash]"

      assert_select "input[name=?]", "user[password_salt]"

      assert_select "input[name=?]", "user[email]"
    end
  end
end
