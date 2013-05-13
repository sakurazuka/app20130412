require 'spec_helper'

describe "fake_twitters/index" do
  before(:each) do
    assign(:fake_twitters, [
      stub_model(FakeTwitter,
        :tweet => "Tweet"
      ),
      stub_model(FakeTwitter,
        :tweet => "Tweet"
      )
    ])
  end

  it "renders a list of fake_twitters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tweet".to_s, :count => 2
  end
end
