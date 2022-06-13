class AddMovieTimestamps < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :created_at, :timestamp
    add_column :movies, :updated_at, :timestamp
  end
end
