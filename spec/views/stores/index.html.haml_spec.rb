require 'rails_helper'

RSpec.describe "stores/index", type: :view do
  before(:each) do
    assign(:stores, [
      Store.create!(
        :name => "Name",
        :logo => "Logo",
        :background_image => "Background Image",
        :description => "Description",
        :valcher => "Valcher",
        :url => "Url"
      ),
      Store.create!(
        :name => "Name",
        :logo => "Logo",
        :background_image => "Background Image",
        :description => "Description",
        :valcher => "Valcher",
        :url => "Url"
      )
    ])
  end

  it "renders a list of stores" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Logo".to_s, :count => 2
    assert_select "tr>td", :text => "Background Image".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Valcher".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
