require 'spec_helper'

describe "pins/index" do
  before(:each) do
    assign(:pins, [
      stub_model(Pin,
        :name => "Name",
        :user_name => "User Name",
        :age => "Age",
        :city => "City",
        :state => "State",
        :bio => "MyText",
        :credits => "MyText"
      ),
      stub_model(Pin,
        :name => "Name",
        :user_name => "User Name",
        :age => "Age",
        :city => "City",
        :state => "State",
        :bio => "MyText",
        :credits => "MyText"
      )
    ])
  end

  it "renders a list of pins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Age".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
