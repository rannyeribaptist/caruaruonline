require 'rails_helper'

RSpec.describe "promotional_banners/new", type: :view do
  before(:each) do
    assign(:promotional_banner, PromotionalBanner.new(
      :store => nil,
      :name => "MyString",
      :banner => "MyString"
    ))
  end

  it "renders new promotional_banner form" do
    render

    assert_select "form[action=?][method=?]", promotional_banners_path, "post" do

      assert_select "input[name=?]", "promotional_banner[store_id]"

      assert_select "input[name=?]", "promotional_banner[name]"

      assert_select "input[name=?]", "promotional_banner[banner]"
    end
  end
end
