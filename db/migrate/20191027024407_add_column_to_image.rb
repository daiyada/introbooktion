class AddColumnToImage < ActiveRecord::Migration[5.2]
  def change
    add_reference :images, :comment, foreign_key: true
  end
end
