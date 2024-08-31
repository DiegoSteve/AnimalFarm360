class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :role, :integer
    add_reference :users, :ranch, foreign_key: true, null: true
  end
end
