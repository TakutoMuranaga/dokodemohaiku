class CreatePoemComments < ActiveRecord::Migration[6.1]
  def change
    create_table :poem_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :poem_id

      t.timestamps
    end
  end
end
