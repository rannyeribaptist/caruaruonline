class Store < ApplicationRecord
  has_many :categories

  accept_nested_attributes_for :categories, reject_if: :all_blank, allow_destroy: true

  validates_presence_of :name
  validates_presence_of :logo
  validates_presence_of :background_image
  validates_presence_of :description
  validates_presence_of :url
end
