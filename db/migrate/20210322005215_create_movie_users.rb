class CreateMovieUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_users do |t|
      t.string :movie_name
      t.integer :user_id

      t.timestamps
    end
  end
end
