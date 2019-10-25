class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string, null: false, unique: true
    add_column :users, :name_id, :string, null: false, unique: true
  end
end
