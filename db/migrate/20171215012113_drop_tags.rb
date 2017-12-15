class DropTags < ActiveRecord::Migration[5.1]
  def change

    drop_table :tags do |t|
      t.integer "poem_id"
      t.integer "tag_id"
    end

    drop_table :poem_tags do |t|
      t.string "label"
    end

  end
end
