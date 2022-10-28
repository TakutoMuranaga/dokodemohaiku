class CreatePoems < ActiveRecord::Migration[6.1]
  def change
    create_table :poems do |t|
      t.string :body
      t.integer :genre_id
      t.integer :user_id
      t.timestamps
    end
  end
end
