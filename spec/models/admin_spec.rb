require 'rails_helper'

RSpec.describe Admin, type: :model do
  it { should validate_presence_of :name }

  it "should be valid if all the fields are filled" do
    admin = Admin.new(name: "test", email: "test@test.com", password: "123123", password_confirmation: "123123")

    expect(admin).to be_valid
  end
end
