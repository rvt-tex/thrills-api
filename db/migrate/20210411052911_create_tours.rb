class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.string :title
      t.string :img
      t.string :description
      t.string :duration
      t.string :price

      t.timestamps
    end
  end
end
