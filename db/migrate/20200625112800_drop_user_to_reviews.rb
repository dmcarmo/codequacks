class DropUserToReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :user_id
    add_column :reviews, :rating, :integer
  end
end
