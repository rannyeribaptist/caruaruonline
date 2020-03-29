require 'rails_helper'

RSpec.describe "promotional_banners/show", type: :view do
  before(:each) do
    @promotional_banner = assign(:promotional_banner, PromotionalBanner.create!(
      :store => nil,
      :name => "Name",
      :banner => "Banner"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Banner/)
  end
end
