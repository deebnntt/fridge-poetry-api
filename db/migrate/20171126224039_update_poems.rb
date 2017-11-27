class UpdatePoems < ActiveRecord::Migration[5.1]
  def change
    add_column :poems, :title, :string
    add_column :poems, :words, :string, array: true, default: []
    add_column :poems, :tags, :string, array: true, default: []
  end
end
