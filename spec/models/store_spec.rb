require 'rails_helper'

RSpec.describe Store, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :logo }
  it { should validate_presence_of :background_image }
  it { should validate_presence_of :description }
  it { should validate_presence_of :url }
end
