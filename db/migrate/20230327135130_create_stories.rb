class CreateStories < ActiveRecord::Migration[7.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :summary
      t.text :content
      t.string :tag
      t.integer :rating
      t.integer :age
      t.integer :length
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
