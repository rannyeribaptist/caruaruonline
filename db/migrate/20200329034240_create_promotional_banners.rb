class CreatePromotionalBanners < ActiveRecord::Migration[6.0]
  def change
    create_table :promotional_banners do |t|
      t.belongs_to :store, null: false, foreign_key: true
      t.string :name
      t.string :banner

      t.timestamps
    end
  end
end
