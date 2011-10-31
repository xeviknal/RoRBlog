class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.text :content
      t.date :creation_time
      t.date :modification_time
      t.string :thumbnail_path
      t.string :state

      t.timestamps
    end
  end
end
