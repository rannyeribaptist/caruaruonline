require 'rails_helper'

RSpec.describe PromotionalBanner, type: :model do
  it {should validate_presence_of :name}
  it {should validate_presence_of :banner}
  it {should validate_presence_of :store_id}
end
