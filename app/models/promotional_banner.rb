class PromotionalBanner < ApplicationRecord
  belongs_to :store

  validates_presence_of :name
  validates_presence_of :banner
  validates_presence_of :store_id
end
