class RemoveCategoryIdFromTweet < ActiveRecord::Migration[5.2]
  def change
    remove_reference :tweets, :category, null: false, foreign_key: true
  end
end
