class CreatePoems < ActiveRecord::Migration[6.1]
  def change
    create_table :poems do |t|
      t.string :poem_start
      t.string :poem_middle
      t.string :poem_end
      t.integer :genre_id
      t.integer :user_id
      t.timestamps
    end
  end
end
