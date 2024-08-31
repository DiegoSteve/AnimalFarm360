class AddUserToRanches < ActiveRecord::Migration[7.0]
  def change
    add_reference :ranches, :user, null: false, foreign_key: true
  end
end
