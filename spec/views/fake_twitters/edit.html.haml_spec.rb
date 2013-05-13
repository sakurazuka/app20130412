require 'spec_helper'

describe "fake_twitters/edit" do
  before(:each) do
    @fake_twitter = assign(:fake_twitter, stub_model(FakeTwitter,
      :tweet => "MyString"
    ))
  end

  it "renders the edit fake_twitter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fake_twitter_path(@fake_twitter), "post" do
      assert_select "input#fake_twitter_tweet[name=?]", "fake_twitter[tweet]"
    end
  end
end
