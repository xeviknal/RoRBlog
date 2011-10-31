class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.boolean :sex
      t.string :email
      t.references :posts
      t.references :role

      t.timestamps
    end
    add_index :users, :posts_id
    add_index :users, :role_id
  end
end
