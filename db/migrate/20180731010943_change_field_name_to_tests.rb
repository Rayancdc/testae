class ChangeFieldNameToTests < ActiveRecord::Migration[5.2]
  def change
    rename_column :tests, :user_id, :owner_id
  end
end
