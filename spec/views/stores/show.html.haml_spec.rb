require 'rails_helper'

RSpec.describe "stores/show", type: :view do
  before(:each) do
    @store = assign(:store, Store.create!(
      :name => "Name",
      :logo => "Logo",
      :background_image => "Background Image",
      :description => "Description",
      :valcher => "Valcher",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Logo/)
    expect(rendered).to match(/Background Image/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Valcher/)
    expect(rendered).to match(/Url/)
  end
end
