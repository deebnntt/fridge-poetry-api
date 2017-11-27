class DropPoemsWords < ActiveRecord::Migration[5.1]
  def change
    drop_table :poems_words do |t|
      t.integer "poem_id"
      t.integer "word_id"
    end
  end
end
