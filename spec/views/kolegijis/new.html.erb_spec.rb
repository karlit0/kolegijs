require 'spec_helper'

describe "kolegijis/new" do
  before(:each) do
    assign(:kolegiji, stub_model(Kolegiji,
      :ime => "MyString",
      :ocjena => 1,
      :komentar => "MyString"
    ).as_new_record)
  end

  it "renders new kolegiji form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => kolegijis_path, :method => "post" do
      assert_select "input#kolegiji_ime", :name => "kolegiji[ime]"
      assert_select "input#kolegiji_ocjena", :name => "kolegiji[ocjena]"
      assert_select "input#kolegiji_komentar", :name => "kolegiji[komentar]"
    end
  end
end
