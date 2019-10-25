class CreateIcons < ActiveRecord::Migration[5.2]
  def change
    create_table :icons do |t|
      t.string :image, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
