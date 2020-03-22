require 'rails_helper'

RSpec.describe "admins/index", type: :view do
  before(:each) do
    assign(:admins, [
      Admin.create!(
        :name => "Name"
      ),
      Admin.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of admins" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
