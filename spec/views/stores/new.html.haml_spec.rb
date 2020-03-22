require 'rails_helper'

RSpec.describe "stores/new", type: :view do
  before(:each) do
    assign(:store, Store.new(
      :name => "MyString",
      :logo => "MyString",
      :background_image => "MyString",
      :description => "MyString",
      :valcher => "MyString",
      :url => "MyString"
    ))
  end

  it "renders new store form" do
    render

    assert_select "form[action=?][method=?]", stores_path, "post" do

      assert_select "input[name=?]", "store[name]"

      assert_select "input[name=?]", "store[logo]"

      assert_select "input[name=?]", "store[background_image]"

      assert_select "input[name=?]", "store[description]"

      assert_select "input[name=?]", "store[valcher]"

      assert_select "input[name=?]", "store[url]"
    end
  end
end
