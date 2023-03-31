class AddDefaultToRating < ActiveRecord::Migration[7.0]
  def change
    change_column :stories, :rating, :integer, default: 0
  end
end
