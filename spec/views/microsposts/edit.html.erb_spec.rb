require 'spec_helper'

describe "microsposts/edit" do
  before(:each) do
    @microspost = assign(:microspost, stub_model(Microspost,
      :content => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit microspost form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => microsposts_path(@microspost), :method => "post" do
      assert_select "input#microspost_content", :name => "microspost[content]"
      assert_select "input#microspost_user_id", :name => "microspost[user_id]"
    end
  end
end
