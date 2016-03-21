require 'rails_helper'

RSpec.describe "friends/index", type: :view do
  before(:each) do
    assign(:friends, [
      Friend.create!(
        :name => "Name",
        :address => "Address"
      ),
      Friend.create!(
        :name => "Name",
        :address => "Address"
      )
    ])
  end

  it "renders a list of friends" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end