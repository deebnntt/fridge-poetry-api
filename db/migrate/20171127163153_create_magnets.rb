class CreateMagnets < ActiveRecord::Migration[5.1]
  def change
    create_table :magnets do |t|
      t.integer :poem_id
      t.string :text
      t.integer :x
      t.integer :y
    end
  end
end
