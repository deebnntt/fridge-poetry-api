class CreatePoemTags < ActiveRecord::Migration[5.1]
  def change
    create_table :poem_tags do |t|
      t.integer :poem_id
      t.integer :tag_id
    end
  end
end
