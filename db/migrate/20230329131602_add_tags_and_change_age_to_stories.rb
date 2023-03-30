class AddTagsAndChangeAgeToStories < ActiveRecord::Migration[7.0]
  def change
    add_column :stories, :tags, :string
    change_column :stories, :age, :string
  end
end
