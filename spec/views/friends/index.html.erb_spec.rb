require 'spec_helper'

describe "friends/index" do
  before(:each) do
    assign(:friends, [
      stub_model(Friend,
        :name => "Name",
        :address => "Address"
      ),
      stub_model(Friend,
        :name => "Name",
        :address => "Address"
      )
    ])
  end

  it "renders a list of friends" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
