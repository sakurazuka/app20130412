require 'spec_helper'

describe "fake_twitters/new" do
  before(:each) do
    assign(:fake_twitter, stub_model(FakeTwitter,
      :tweet => "MyString"
    ).as_new_record)
  end

  it "renders new fake_twitter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fake_twitters_path, "post" do
      assert_select "input#fake_twitter_tweet[name=?]", "fake_twitter[tweet]"
    end
  end
end
