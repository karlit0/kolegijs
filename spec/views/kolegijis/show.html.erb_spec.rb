require 'spec_helper'

describe "kolegijis/show" do
  before(:each) do
    @kolegiji = assign(:kolegiji, stub_model(Kolegiji,
      :ime => "Ime",
      :ocjena => 1,
      :komentar => "Komentar"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ime/)
    rendered.should match(/1/)
    rendered.should match(/Komentar/)
  end
end
