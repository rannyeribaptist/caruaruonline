require 'rails_helper'

RSpec.describe "promotional_banners/edit", type: :view do
  before(:each) do
    @promotional_banner = assign(:promotional_banner, PromotionalBanner.create!(
      :store => nil,
      :name => "MyString",
      :banner => "MyString"
    ))
  end

  it "renders the edit promotional_banner form" do
    render

    assert_select "form[action=?][method=?]", promotional_banner_path(@promotional_banner), "post" do

      assert_select "input[name=?]", "promotional_banner[store_id]"

      assert_select "input[name=?]", "promotional_banner[name]"

      assert_select "input[name=?]", "promotional_banner[banner]"
    end
  end
end
