require 'spec_helper'

describe "pins/new" do
  before(:each) do
    assign(:pin, stub_model(Pin,
      :name => "MyString",
      :user_name => "MyString",
      :age => "MyString",
      :city => "MyString",
      :state => "MyString",
      :bio => "MyText",
      :credits => "MyText"
    ).as_new_record)
  end

  it "renders new pin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pins_path, "post" do
      assert_select "input#pin_name[name=?]", "pin[name]"
      assert_select "input#pin_user_name[name=?]", "pin[user_name]"
      assert_select "input#pin_age[name=?]", "pin[age]"
      assert_select "input#pin_city[name=?]", "pin[city]"
      assert_select "input#pin_state[name=?]", "pin[state]"
      assert_select "textarea#pin_bio[name=?]", "pin[bio]"
      assert_select "textarea#pin_credits[name=?]", "pin[credits]"
    end
  end
end
