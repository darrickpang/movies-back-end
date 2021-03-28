class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :user_name
      t.text :post
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
