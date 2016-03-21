require 'rails_helper'

RSpec.describe "friends/show", type: :view do
  before(:each) do
    @friend = assign(:friend, Friend.create!(
      :name => "Name",
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
  end
end
