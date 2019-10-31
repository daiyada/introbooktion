class AddCategoryToTweet < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :category, :string, null: false
    remove_column :tweets, :title, :string
    add_column :tweets, :title, :string, null: false
  end
end
