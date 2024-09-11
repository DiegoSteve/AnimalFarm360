class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :species
      t.string :breed
      t.date :birthdate
      t.decimal :initial_weight
      t.string :gender
      t.string :status
      t.date :acquisition_date
      t.string :supplier
      t.text :health_history
      t.text :production
      t.text :comments
      t.references :corral, null: false, foreign_key: true
      t.references :ranch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
