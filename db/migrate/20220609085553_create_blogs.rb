class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.string :date
      t.string :image
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
