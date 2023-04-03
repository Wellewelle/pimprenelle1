class ChangeColumnInStories < ActiveRecord::Migration[7.0]
  def change
    change_column :stories, :length, :string
  end
end
