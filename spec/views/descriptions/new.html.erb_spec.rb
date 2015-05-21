require 'spec_helper'

describe "descriptions/new" do
  before(:each) do
    assign(:description, stub_model(Description,
      :name => "MyString",
      :logo => "MyString",
      :text => "MyText"
    ).as_new_record)
  end

  it "renders new description form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", descriptions_path, "post" do
      assert_select "input#description_name[name=?]", "description[name]"
      assert_select "input#description_logo[name=?]", "description[logo]"
      assert_select "textarea#description_text[name=?]", "description[text]"
    end
  end
end
