require 'spec_helper'

describe "kolegijis/index" do
  before(:each) do
    assign(:kolegijis, [
      stub_model(Kolegiji,
        :ime => "Ime",
        :ocjena => 1,
        :komentar => "Komentar"
      ),
      stub_model(Kolegiji,
        :ime => "Ime",
        :ocjena => 1,
        :komentar => "Komentar"
      )
    ])
  end

  it "renders a list of kolegijis" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ime".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Komentar".to_s, :count => 2
  end
end
