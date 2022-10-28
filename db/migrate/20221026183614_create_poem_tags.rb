class CreatePoemTags < ActiveRecord::Migration[6.1]
  def change
    create_table :poem_tags do |t|
      t.references :poem, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
