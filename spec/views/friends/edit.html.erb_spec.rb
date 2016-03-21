require 'rails_helper'

RSpec.describe "friends/edit", type: :view do
  before(:each) do
    @friend = assign(:friend, Friend.create!(
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit friend form" do
    render

    assert_select "form[action=?][method=?]", friend_path(@friend), "post" do

      assert_select "input#friend_name[name=?]", "friend[name]"

      assert_select "input#friend_address[name=?]", "friend[address]"
    end
  end
end
