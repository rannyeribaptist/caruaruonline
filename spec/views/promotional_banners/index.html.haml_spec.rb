require 'rails_helper'

RSpec.describe "promotional_banners/index", type: :view do
  before(:each) do
    assign(:promotional_banners, [
      PromotionalBanner.create!(
        :store => nil,
        :name => "Name",
        :banner => "Banner"
      ),
      PromotionalBanner.create!(
        :store => nil,
        :name => "Name",
        :banner => "Banner"
      )
    ])
  end

  it "renders a list of promotional_banners" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Banner".to_s, :count => 2
  end
end
