require 'spec_helper'

describe "microsposts/show" do
  before(:each) do
    @microspost = assign(:microspost, stub_model(Microspost,
      :content => "Content",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    rendered.should match(/1/)
  end
end
