require 'spec_helper'

describe "pins/show" do
  before(:each) do
    @pin = assign(:pin, stub_model(Pin,
      :name => "Name",
      :user_name => "User Name",
      :age => "Age",
      :city => "City",
      :state => "State",
      :bio => "MyText",
      :credits => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/User Name/)
    rendered.should match(/Age/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
