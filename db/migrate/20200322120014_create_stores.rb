class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :logo
      t.string :background_image
      t.string :description
      t.string :valcher
      t.string :url

      t.timestamps
    end
  end
end
