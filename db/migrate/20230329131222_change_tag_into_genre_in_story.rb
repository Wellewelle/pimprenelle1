class ChangeTagIntoGenreInStory < ActiveRecord::Migration[7.0]
  def change
    rename_column :stories, :tag, :genre
  end
end
