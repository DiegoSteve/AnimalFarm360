class CreateCorrals < ActiveRecord::Migration[7.0]
  def change
    create_table :corrals do |t|
      t.string :name
      t.integer :capacity
      t.string :tipo
      t.references :ranch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
