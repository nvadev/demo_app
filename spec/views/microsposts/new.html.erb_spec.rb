require 'spec_helper'

describe "microsposts/new" do
  before(:each) do
    assign(:microspost, stub_model(Microspost,
      :content => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new microspost form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => microsposts_path, :method => "post" do
      assert_select "input#microspost_content", :name => "microspost[content]"
      assert_select "input#microspost_user_id", :name => "microspost[user_id]"
    end
  end
end
