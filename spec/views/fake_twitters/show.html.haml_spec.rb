require 'spec_helper'

describe "fake_twitters/show" do
  before(:each) do
    @fake_twitter = assign(:fake_twitter, stub_model(FakeTwitter,
      :tweet => "Tweet"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tweet/)
  end
end
