require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :password_hash => "Password Hash",
      :password_salt => "Password Salt",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Password Hash/)
    expect(rendered).to match(/Password Salt/)
    expect(rendered).to match(/Email/)
  end
end
