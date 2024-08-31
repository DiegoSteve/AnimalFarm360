class ChangeRanchIdToAllowNullInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :ranch_id, true
  end
end
